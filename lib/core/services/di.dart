import 'package:get_it/get_it.dart';
import 'package:nike_shop/core/services/auth_service.dart';
import 'package:nike_shop/core/services/firestore_service.dart';
import 'package:nike_shop/core/services/storage_service.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services, repositories, viewmodels here
  locator.registerLazySingleton<AuthService>(() => AuthService());
  locator.registerLazySingleton<FirestoreService>(() => FirestoreService());
  locator.registerLazySingleton<StorageService>(() => StorageService());
}