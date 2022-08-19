import 'package:get/get.dart';
import 'projects_controller.dart';

class ProjectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProjectsController());
  }
}
