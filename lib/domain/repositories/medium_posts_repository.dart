import 'package:either_dart/either.dart';
import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';

import '../entities/medium_posts_response.dart';

abstract class MediumPostsRepository {
  Future<Either<Exception,MediumPostsResponse>> fetchUserPosts(String tagName);
}
