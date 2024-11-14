
import 'package:get/get.dart';

class ExampleThreeController extends GetxController{
  RxBool notification = false.obs;

  changeNotification(value){
    notification.value = value;
  }
}