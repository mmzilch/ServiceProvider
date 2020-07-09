import 'package:flutter_service/storage_service.dart';
import 'package:flutter_service/storage_service_fake.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;//to call locator

setupServiceLocator(){
  locator.registerLazySingleton<StorageService> (() => StorageServiceFake());//if storage service is not working
}