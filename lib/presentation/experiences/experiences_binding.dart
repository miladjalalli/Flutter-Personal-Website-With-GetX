import 'package:get/get.dart';

import 'experiences_controller.dart';

class ExperiencesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ExperiencesController());
  }
}
