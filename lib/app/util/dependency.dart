import 'package:get/get.dart';
import 'package:miladjalali_ir/data/repositories/images_repository.dart';
class DenpendencyCreator {
  static init() {
    Get.lazyPut(() => ImagesRepositoryIml());
  }
}
