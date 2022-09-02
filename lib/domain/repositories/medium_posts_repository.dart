import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';

import '../entities/medium_posts_response.dart';

abstract class MediumPostsRepository {
  Future<MediumPostsResponse> fetchUserPosts(String tagName);
}
