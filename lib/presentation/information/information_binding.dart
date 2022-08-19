import 'package:get/get.dart';
import 'information_controller.dart';

class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InformationController());
  }
}
