import 'package:flutter/cupertino.dart';
import 'package:flutter_service/service_locator.dart';
import 'package:flutter_service/storage_service.dart';

class CounterViewModel extends ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;//getter
  StorageService _storageService = locator<StorageService>();//get shared pref data
  Future loadData() async{
    _counter = await _storageService.getCounterValue();//loading
    notifyListeners();
  }

  void increment(){
    _counter ++;
    _storageService.saveCounterValue(_counter);//changed value save in shared pref:
    notifyListeners();
  }

  void decrement(){
    _counter --;
    _storageService.saveCounterValue(_counter);//changed value save in shared pref:
    notifyListeners();
  }
}