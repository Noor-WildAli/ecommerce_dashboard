import 'package:ecommerce_dashboard/core/services/fire_storage.dart';
import 'package:ecommerce_dashboard/core/services/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(FireStorage());
}
