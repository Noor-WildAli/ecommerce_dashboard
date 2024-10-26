import 'dart:io';

import 'package:ecommerce_dashboard/core/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as b;

class FireStorage implements StorageService {
  final storageReference = FirebaseStorage.instance.ref();
  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    String extenionName = b.extension(file.path);

    var fileReference = storageReference.child('$path/$fileName.$extenionName');
    await fileReference.putFile(file);
    var imageUrl = await fileReference.getDownloadURL();
    return imageUrl;
  }
}
