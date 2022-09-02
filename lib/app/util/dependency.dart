import 'package:get/get.dart';
import 'package:miladjalali_ir/data/repositories/images_repository.dart';

import '../../data/repositories/medium_posts_repository.dart';
class DenpendencyCreator {
  static init() {
    Get.lazyPut(() => ImagesRepositoryIml());
    Get.lazyPut(() => MediumPostsRepositoryIml());
  }
}
