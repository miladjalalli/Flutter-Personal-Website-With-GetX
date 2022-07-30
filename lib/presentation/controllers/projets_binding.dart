import 'package:get/get.dart';
import 'package:miladjalali_ir/data/repositories/images_repository.dart';
import 'package:miladjalali_ir/domain/usecases/fetch_person_images_use_case.dart';
import 'package:miladjalali_ir/presentation/controllers/about_controller.dart';
import 'package:miladjalali_ir/presentation/controllers/home_controller.dart';
import 'package:miladjalali_ir/presentation/controllers/projects_controller.dart';

class ProjectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProjectsController());
  }
}
