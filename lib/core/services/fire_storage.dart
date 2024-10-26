import 'package:ecommerce_dashboard/core/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FireStorage implements StorageService {
  final storageReference = FirebaseStorage.instance;
  @override
  Future<String> uploadFile(String file) {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }
}
