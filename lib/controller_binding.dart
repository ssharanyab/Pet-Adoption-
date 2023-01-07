import 'package:get/get.dart';
import 'package:pet_adoption/controller/controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}
