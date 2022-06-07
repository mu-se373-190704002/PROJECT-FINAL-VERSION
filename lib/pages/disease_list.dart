import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/service/disease_service.dart';

import '../themes/theme.dart';



class PlantDiseaseListPage extends StatefulWidget {
  const PlantDiseaseListPage({Key? key}) : super(key: key);

  @override
  State<PlantDiseaseListPage> createState() => _PlantDiseaseListPageState();
}

class _PlantDiseaseListPageState extends State<PlantDiseaseListPage> {

  DiseaseService _diseaseService = DiseaseService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
      stream: _diseaseService.getDiseases(),
      builder: (context, snaphot) {
        return !snaphot.hasData
            ? CircularProgressIndicator()
            : ListView.builder(
            itemCount: snaphot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot mypost = snaphot.data!.docs[index];


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
                          "${mypost['plantDisease']}",
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
