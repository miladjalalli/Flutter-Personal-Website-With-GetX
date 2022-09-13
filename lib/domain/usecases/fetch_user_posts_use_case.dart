import 'package:either_dart/either.dart';
import 'package:miladjalali_ir/app/core/usecases/pram_usecase.dart';
import 'package:miladjalali_ir/domain/entities/medium_posts_response.dart';
import 'package:miladjalali_ir/domain/entities/paging.dart';
import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';
import 'package:miladjalali_ir/domain/repositories/images_repository.dart';
import 'package:miladjalali_ir/domain/repositories/medium_posts_repository.dart';
import 'package:tuple/tuple.dart';

class FetchUserPostsUseCase extends ParamUseCase<Either<Exception,MediumPostsResponse>, String> {
  final MediumPostsRepository _repo;

  FetchUserPostsUseCase(this._repo);

  @override
  Future<Either<Exception,MediumPostsResponse>> execute(String param) {
    return _repo.fetchUserPosts(param);
  }
}
