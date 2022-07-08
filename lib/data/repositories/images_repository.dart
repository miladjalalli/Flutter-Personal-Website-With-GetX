
import 'package:miladjalali_ir/data/providers/network/apis/images_api.dart';
import 'package:miladjalali_ir/domain/entities/paging.dart';
import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';
import 'package:miladjalali_ir/domain/repositories/images_repository.dart';

import '../models/unsplash_search_response_model.dart';

class ImagesRepositoryIml extends ImagesRepository {
  @override
  Future<UnsplashSearchResponse> fetchPersonImages(int page, int pageSize) async{
    final response = await ImagesAPI.getPersonalImages(page, pageSize).request();
    return UnsplashSearchResponseModel.fromJson(response);
  }

}
