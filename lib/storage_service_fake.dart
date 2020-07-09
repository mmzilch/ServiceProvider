import 'package:flutter_service/storage_service.dart';

class StorageServiceFake extends StorageService{
  @override
  Future<int> getCounterValue() async{
    return 10;
  }

  @override
  Future<void> saveCounterValue(int value) async{
    //do nothing
  }

}