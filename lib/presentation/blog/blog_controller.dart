import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:either_dart/either.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/domain/entities/medium_posts_response.dart';
import 'package:miladjalali_ir/domain/usecases/fetch_user_posts_use_case.dart';

import '../widgets/custom_snackbar.dart';

class BlogController extends GetxController with GetTickerProviderStateMixin {
  BlogController(this._fetchUserPostsUseCase);

  String _tagName = "flutter";

  late FetchUserPostsUseCase _fetchUserPostsUseCase;
  Rx<MediumPostsResponse?>? mediumPostsResponse =  Rx<MediumPostsResponse?>(null);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    fetchUserPosts();
    super.onReady();
  }

  @override
  void dispose() {
    super.dispose();
  }

  fetchUserPosts() async {
    Either response = await _fetchUserPostsUseCase.execute(_tagName);
    response.fold((left) {
      CustomSnackBar.show(Get.context!, left.message, ContentType.failure);
    }, (right) {
      mediumPostsResponse!.value = right;
      update();
    });

  }
}
