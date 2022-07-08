import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';

abstract class ImagesRepository {
  Future<UnsplashSearchResponse> fetchPersonImages(int page, int pageSize);
}
