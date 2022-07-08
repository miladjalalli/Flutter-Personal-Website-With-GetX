import 'package:miladjalali_ir/domain/entities/unsplash_image_urls.dart';

class UnsplashImageUrlsModel extends UnsplashImageUrls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  UnsplashImageUrlsModel({required this.raw,required this.full,required this.regular,required this.small,required this.thumb,required this.smallS3})
      : super(full: full, raw: raw, regular: regular, small: small, smallS3: smallS3, thumb: thumb);

  @override
  factory UnsplashImageUrlsModel.fromJson(Map<String, dynamic> json) => UnsplashImageUrlsModel(
    raw : json['raw'],
    full : json['full'],
    regular : json['regular'],
    small : json['small'],
    thumb : json['thumb'],
    smallS3 : json['small_s3'],
    );

}
