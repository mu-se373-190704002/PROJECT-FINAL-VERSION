
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:projectapp/service/storage_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/PlantModel.dart';

class PlantService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  StorageService _storageService = StorageService();
  String mediaUrl = '';

  //status eklemek için
  Future<Plants> addStatus(String plantName,String plantFeature, XFile pickedFile) async {
    var ref = _firestore.collection("plants");

    mediaUrl = await _storageService.uploadMedia(File(pickedFile.path));

    var documentRef = await ref.add({'plantName': plantName, 'plantFeature': plantFeature, 'plantImages': mediaUrl});

    return Plants(id: documentRef.id, plantName: plantName, plantFeature: plantFeature, plantImages: mediaUrl);
  }

  //status göstermek için
  Stream<QuerySnapshot> getPlants() {
    var ref = _firestore.collection("plants").snapshots();

    return ref;
  }

  //status silmek için
  Future<void> removePlants(String docId) {
    var ref = _firestore.collection("plants").doc(docId).delete();

    return ref;
  }
}