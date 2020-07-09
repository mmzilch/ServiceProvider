import 'dart:html';

import 'package:flutter_service/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServiceSharedPreferences extends StorageService{
  @override
  Future<int> getCounterValue() async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter_key') ?? 0;//??null check
  }

  @override
  Future<void> saveCounterValue(int value) async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter_key', value);
    
  }//stored data >>detail implementation

}