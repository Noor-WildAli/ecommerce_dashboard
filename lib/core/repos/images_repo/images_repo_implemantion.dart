import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_dashboard/core/errors/faliures.dart';
import 'package:ecommerce_dashboard/core/repos/images_repo/images_repo.dart';

class ImagesRepoImplemantion implements ImagesRepo {
  @override
  Future<Either<Failure, String>> uploadImage(File image) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}
