

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectapp/service/storage_service.dart';

import '../model/DiseaseModel.dart';

class DiseaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  StorageService _storageService = StorageService();
  String mediaUrl = '';

  //status eklemek için
  Future<Diseases> addDiseases(String plantName,String plantDisease, XFile pickedFile) async {
    var ref = _firestore.collection("diseases");

    mediaUrl = await _storageService.uploadMedia(File(pickedFile.path));

    var documentRef = await ref.add({'plantName': plantName, 'plantDisease': plantDisease, 'plantImages': mediaUrl});

    return Diseases(id: documentRef.id, plantName: plantName, plantDisease: plantDisease, plantImages: mediaUrl);
  }

  //status göstermek için
  Stream<QuerySnapshot> getDiseases() {
    var ref = _firestore.collection("diseases").snapshots();

    return ref;
  }

  //status silmek için
  Future<void> removeDiseases(String docId) {
    var ref = _firestore.collection("diseases").doc(docId).delete();

    return ref;
  }
}