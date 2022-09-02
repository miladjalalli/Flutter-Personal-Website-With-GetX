import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/domain/entities/medium_post_item.dart';
import 'package:miladjalali_ir/presentation/widgets/common/rounded_button_with_icon.dart';

import '../../../app/util/url_helper.dart';

@immutable
class BlogPostItem extends StatelessWidget {
  late final MediumPostItem postItem;

  BlogPostItem(this.postItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      surfaceTintColor: Colors.red,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              child: CachedNetworkImage(
                imageUrl: postItem.thumbnail!,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, downloadProgress) => SpinKitDualRing(
                  color: Get.theme.accentColor,
                  size: 36,
                ),
                errorWidget: (context, url, error) => Image.asset("assets/images/ic_no_image.jpg",fit: BoxFit.contain,),
                height: 200,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(
                postItem.title!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                      child: Text(
                        postItem.author!,
                        maxLines: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: Text(
                        postItem.pubDate.toString(),
                        maxLines: 1,
                      ),
                    ),
                  ],
                )),
                RoundedButtonByIcon(Colors.black, Icons.arrow_forward, () {
                  UrlHelper.launchUrl(postItem.link!);
                })
              ],
            )
          ],
        ),
    );
  }
}
