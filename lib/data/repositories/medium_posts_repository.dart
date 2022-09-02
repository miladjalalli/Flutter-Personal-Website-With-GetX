import 'package:miladjalali_ir/data/providers/network/apis/images_api.dart';
import 'package:miladjalali_ir/domain/entities/medium_posts_response.dart';
import 'package:miladjalali_ir/domain/entities/paging.dart';
import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';
import 'package:miladjalali_ir/domain/repositories/images_repository.dart';

import '../../domain/repositories/medium_posts_repository.dart';
import '../models/unsplash_search_response_model.dart';
import '../providers/network/apis/medium_api.dart';

class MediumPostsRepositoryIml extends MediumPostsRepository {

  @override
  Future<MediumPostsResponse> fetchUserPosts(String username) async {
    final response = await MediumAPI.fetchUserPosts(username).request();
    return MediumPostsResponse.fromJson(response);
  }
}
