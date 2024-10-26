import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_dashboard/core/errors/faliures.dart';
import 'package:ecommerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:ecommerce_dashboard/core/services/storage_service.dart';
import 'package:ecommerce_dashboard/core/utils/backend_endpoint.dart';

class ImagesRepoImplemantion implements ImagesRepo {
  final StorageService storageService;

  ImagesRepoImplemantion(this.storageService);
  @override
  Future<Either<Failure, String>> uploadImage(File image) async {
    try {
      String url =
          await storageService.uploadFile(image, BackendEndpoint.images);
      return Right(url);
    } on Exception catch (e) {
      return Left(ServerFailure('Faild to upload image'));
    }
  }
}
