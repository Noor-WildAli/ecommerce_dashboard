import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_dashboard/core/errors/faliures.dart';

abstract class ImagesRepo {
  Future<Either<Failure, String>> uploadImage(File image);
}
