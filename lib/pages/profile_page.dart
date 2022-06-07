import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectapp/model/UserModel.dart';
import 'package:projectapp/pages/login_page.dart';
import 'package:projectapp/themes/theme.dart';
import 'package:projectapp/widget/bottom_navbar.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late File fileToUpload;
  FirebaseAuth auth = FirebaseAuth.instance;
  String? dowloadLink;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
    WidgetsBinding.instance?.addPostFrameCallback((_) => baglantiAl());
  }

  baglantiAl() async {
    String referanceWay = (await FirebaseStorage.instance
        .ref()
        .child("profilepictures")
        .child(auth.currentUser!.uid)
        .child("profilePicture.png")
        .getDownloadURL()) as String;

    setState(() {
      String? baglanti;
      dowloadLink = baglanti;
    });
  }

  uploadFromCamera() async {
    var receivedFile = await ImagePicker().getImage(
        source:
            ImageSource.camera); //gallery yerine camera yazarsak kameradan alır
    setState(() {
      fileToUpload = File(receivedFile!.path);
    });

    Reference referanceWay = FirebaseStorage.instance
        .ref()
        .child("profilepictures")
        .child(auth.currentUser!.uid)
        .child("profilePicture.png");

    UploadTask yuklemeGorevi = referanceWay.putFile(fileToUpload);

    String url = await (await yuklemeGorevi).ref.getDownloadURL();
    setState(() {
      dowloadLink = url;
    });
  }

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  Widget build(BuildContext context) {
    final logoutButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: greenColor,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            logOut(context);
          },
          child: Text(
            "Log Out",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: whiteColor, fontWeight: FontWeight.bold),
          )),
    );
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavbar(),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      greenColor,
                      linearTwo,
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -100,
                right: -70,
                child: Container(
                  height: 293,
                  width: 293,
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                right: -80,
                child: Container(
                  height: 179,
                  width: 178,
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23, 58, 23, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                            child: dowloadLink == null
                                ? Text("")
                                : Image.network(dowloadLink!,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover)),
                        RaisedButton(
                            child: Text(
                              "Upload Picture",
                              style: TextStyle(color: whiteColor),
                            ),
                            color: greenColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            onPressed: uploadFromCamera),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      '${loggedInUser.firstName} ${loggedInUser.secondName}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: whiteColor),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: whiteColor,
                          size: 15,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '${loggedInUser.email}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: whiteColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 210, 15, 50),
            child: Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: logoutButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Future<void> logOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
