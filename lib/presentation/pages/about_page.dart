import 'package:flick_video_player/flick_video_player.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/controllers/about_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/web_video_control.dart';
import 'package:video_player/video_player.dart';

class AboutPage extends GetResponsiveView<AboutController> {
  AboutPage() : super(settings: ResponsiveScreenSettings(desktopChangePoint: 1000, tabletChangePoint: 768, watchChangePoint: 300));

  @override
  Widget desktop() {
    return Scaffold(
      body: Obx(() => Container(
            width: Get.width,
            height: Get.height,
            child: Stack(
              children: [
                GridView.builder(
                    controller: controller.scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Get.width ~/ 200, childAspectRatio: 1, crossAxisSpacing: 1, mainAxisSpacing: 1),
                    itemCount: controller.images.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return CachedNetworkImage(
                        imageUrl: controller.images.value[index].urls?.small ?? "",
                        fit: BoxFit.cover,
                        imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            BlurHash(hash: controller.images.value[index].blurHash ?? ""),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      );
                    }),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(64, Get.height / 4, Get.width / 2 - 64, Get.height / 4),
                    child: Center(
                      child: SizedBox(
                        height: Get.width/3 * .5625,
                        width: Get.width/3,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(color: Colors.orange,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlickVideoPlayer(
                              flickManager: controller.flickManager,
                              flickVideoWithControls: FlickVideoWithControls(
                                controls: WebVideoControl(
                                  dataManager: controller.dataManager!,
                                  iconSize: 30,
                                  fontSize: 14,
                                  progressBarSettings: FlickProgressBarSettings(
                                    height: 5,
                                    handleRadius: 5.5,
                                  ),
                                ),
                                videoFit: BoxFit.contain,
                                // aspectRatioWhenLoading: 4 / 3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget phone() {
    return Scaffold(
      body: Obx(() => Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            GridView.builder(
                controller: controller.scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Get.width ~/ 64, childAspectRatio: 1, crossAxisSpacing: 1, mainAxisSpacing: 1),
                itemCount: controller.images.length,
                itemBuilder: (BuildContext ctx, index) {
                  return CachedNetworkImage(
                    imageUrl: controller.images.value[index].urls?.small ?? "",
                    fit: BoxFit.cover,
                    imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        BlurHash(hash: controller.images.value[index].blurHash ?? ""),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  );
                }),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(32,32,32,32),
                child: Center(
                  child: SizedBox(
                    height: Get.width * 0.5625,
                    width: Get.width,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(color: Colors.orange,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FlickVideoPlayer(
                          flickManager: controller.flickManager,
                          flickVideoWithControls: FlickVideoWithControls(
                            controls: WebVideoControl(
                              dataManager: controller.dataManager!,
                              iconSize: 30,
                              fontSize: 14,
                              progressBarSettings: FlickProgressBarSettings(
                                height: 5,
                                handleRadius: 5.5,
                              ),
                            ),
                            videoFit: BoxFit.contain,
                            // aspectRatioWhenLoading: 4 / 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
