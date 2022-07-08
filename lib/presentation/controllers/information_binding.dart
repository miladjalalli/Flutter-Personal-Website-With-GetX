import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/controllers/information_controller.dart';

class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InformationController());
  }
}
