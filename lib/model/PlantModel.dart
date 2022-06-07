import 'package:cloud_firestore/cloud_firestore.dart';

class Plants {
  String id;
  String plantName;
  String plantFeature;
  String plantImages;

  Plants({required this.id, required this.plantName, required this.plantFeature, required this.plantImages});

  factory Plants.fromSnapshot(DocumentSnapshot snapshot) {
    return Plants(
      id: snapshot.id,
      plantName: snapshot["plantName"],
      plantFeature: snapshot["plantFeature"],
      plantImages: snapshot["plantImages"],
    );
  }
}