import 'package:cloud_firestore/cloud_firestore.dart';

class Diseases {
  String id;
  String plantName;
  String plantDisease;
  String plantImages;

  Diseases({required this.id, required this.plantName, required this.plantDisease, required this.plantImages});

  factory Diseases.fromSnapshot(DocumentSnapshot snapshot) {
    return Diseases(
      id: snapshot.id,
      plantName: snapshot["plantName"],
      plantDisease: snapshot["plantDisease"],
      plantImages: snapshot["plantImages"],
    );
  }
}