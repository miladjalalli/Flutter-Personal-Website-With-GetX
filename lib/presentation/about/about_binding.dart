import 'package:get/get.dart';
import 'package:miladjalali_ir/data/repositories/images_repository.dart';
import 'package:miladjalali_ir/domain/usecases/fetch_person_images_use_case.dart';
import 'package:miladjalali_ir/presentation/about/about_controller.dart';
import 'package:miladjalali_ir/presentation/home/home_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchPersonImagesUseCase(Get.find<ImagesRepositoryIml>()));
    Get.put(AboutController(Get.find()));
  }
}
