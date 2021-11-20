import 'package:get/get.dart';

class SearchGetxController extends GetxController {

  static SearchGetxController get to => Get.find();
  RxString searchText = ''.obs;

   void changeSearchText(String text) {
     searchText.value = text;
   }
}