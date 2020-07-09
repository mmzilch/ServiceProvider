abstract class StorageService{//you can call this class to execute everything
  Future<int> getCounterValue();//getter
  Future<void> saveCounterValue(int value);//setter
  //save counter value
}