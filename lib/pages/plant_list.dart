import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectapp/service/plant_service.dart';
import 'package:flutter/material.dart';

import '../themes/theme.dart';

class PlantListPage extends StatefulWidget {
  const PlantListPage({Key? key}) : super(key: key);

  @override
  State<PlantListPage> createState() => _PlantListPageState();
}

class _PlantListPageState extends State<PlantListPage> {

  PlantService _plantService = PlantService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
      stream: _plantService.getPlants(),
      builder: (context, snapshot) {
        return !snapshot.hasData
            ? CircularProgressIndicator()
            : ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot mypost = snapshot.data!.docs[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height * .9,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        border: Border.all(color: linearTwo, width: 2),
                        borderRadius:
                        BorderRadius.all(Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${mypost['plantName']}",
                            style: TextStyle(
                              color: greenColor,
                                fontSize: 17
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "${mypost['plantFeature']}",
                            style: TextStyle(
                                color: darkColor,
                                fontSize: 12
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(mypost['plantImages']),
                                radius: size.height * 0.15,
                              )),
                        ],
                      ),
                    ),
                  ),

              );
            });
      },
    );
  }
}

