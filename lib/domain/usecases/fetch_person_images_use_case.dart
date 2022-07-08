import 'package:miladjalali_ir/app/core/usecases/pram_usecase.dart';
import 'package:miladjalali_ir/domain/entities/paging.dart';
import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';
import 'package:miladjalali_ir/domain/repositories/images_repository.dart';
import 'package:tuple/tuple.dart';

class FetchPersonImagesUseCase extends ParamUseCase<UnsplashSearchResponse, Tuple2<int, int>> {
  final ImagesRepository _repo;
  FetchPersonImagesUseCase(this._repo);

  @override
  Future<UnsplashSearchResponse> execute(Tuple2 param) {
    return _repo.fetchPersonImages(param.item1, param.item2);
  }
}
