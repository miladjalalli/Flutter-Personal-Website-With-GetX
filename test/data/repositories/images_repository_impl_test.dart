// import 'package:flutter_test/flutter_test.dart';
// import 'package:miladjalali_ir/data/repositories/images_repository_impl.dart';
// import 'package:miladjalali_ir/domain/entities/unsplash_search_response.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
//
// class ImagesRepositoryImlMock extends Mock implements ImagesRepositoryIml{}
// class UnsplashSearchResponseMock extends Mock implements UnsplashSearchResponse{}
//
// void main() {
//
//   late ImagesRepositoryImlMock imagesRepositoryImlMock;
//   setUp(() {
//     imagesRepositoryImlMock = new ImagesRepositoryImlMock();
//   });
//
//   int page = 0;
//   int pageSize = 0;
//
//   group("data wa get successfully", () {
//
//     test('should return a NoConnectionFailure if the device is offline', () async {
//       //arrange
//       when(imagesRepositoryImlMock.fetchPersonImages(page, pageSize)).thenAnswer((_) => Future.value(UnsplashSearchResponseMock()));
//
//       //act
//       final result = await imagesRepositoryImlMock.fetchPersonImages(page, pageSize);
//
//       //assert
//       expect(result, UnsplashSearchResponse());
//     });
//   });
// }