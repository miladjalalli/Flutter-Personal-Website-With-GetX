import 'package:miladjalali_ir/data/models/unsplash_image_urls_model.dart';
import 'package:miladjalali_ir/domain/entities/unsplash_image.dart';

class UnsplashImageModel extends UnsplashImage {
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final String? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final String? description;
  final String? altDescription;
  final UnsplashImageUrlsModel? urls;

  UnsplashImageModel(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.promotedAt,
      required this.width,
      required this.height,
      required this.color,
      required this.blurHash,
      required this.description,
      required this.altDescription,
      required this.urls})
      : super(
            id: id,
            color: color,
            width: width,
            description: description,
            createdAt: createdAt,
            height: height,
            altDescription: altDescription,
            blurHash: blurHash,
            promotedAt: promotedAt,
            updatedAt: updatedAt,
            urls: urls);

  @override
  factory UnsplashImageModel.fromJson(Map<String, dynamic> json) => UnsplashImageModel(
    id : json['id'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    promotedAt : json['promoted_at'],
    width : json['width'],
    height : json['height'],
    color : json['color'],
    blurHash : json['blur_hash'],
    description : json['description'],
    altDescription : json['alt_description'],
    urls : json['urls'] != null ? new UnsplashImageUrlsModel.fromJson(json['urls']) : null,
  );

}
