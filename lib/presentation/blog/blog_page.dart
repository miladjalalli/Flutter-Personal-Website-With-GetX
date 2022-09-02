import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/blog/blog_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/common/loading_widget.dart';
import 'package:miladjalali_ir/presentation/widgets/common/no_post_widget.dart';

import '../widgets/common/blog_background_painter.dart';
import '../widgets/common/blog_post_item.dart';

class BlogPage extends GetResponsiveView<BlogController> {
  BlogPage()
      : super(settings: ResponsiveScreenSettings(desktopChangePoint: 1000, tabletChangePoint: 768, watchChangePoint: 300));

  @override
  Widget desktop() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Obx(() => Stack(
              children: [
                CustomPaint(painter: BlogBackgroundPainter(), size: Size.infinite),
                controller.mediumPostsResponse?.value == null
                    ? LoadingWidget()
                    : controller.mediumPostsResponse!.value!.items!.isEmpty
                        ? NoPostWidget()
                        : Container(
                            padding: EdgeInsets.fromLTRB(96,96,96,32),
                            child: GridView.builder(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                  childAspectRatio:((Get.width- 192)/3)/330
                                ),
                                itemCount: controller.mediumPostsResponse!.value!.items!.length,
                                physics: ScrollPhysics(),
                                itemBuilder: (BuildContext ctx, index) {
                                  return BlogPostItem(controller.mediumPostsResponse!.value!.items![index]);
                                }),
                          ),
              ],
            )),
      ),
    );
  }

  @override
  Widget phone() {
    return Scaffold(
      body: Obx(() => Stack(
        children: [
          controller.mediumPostsResponse?.value == null
              ? LoadingWidget()
              : controller.mediumPostsResponse!.value!.items!.isEmpty
              ? NoPostWidget()
              : Container(
            padding: EdgeInsets.fromLTRB(16,96,16,16),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio:((Get.width- 32)/2)/330
                ),
                itemCount: controller.mediumPostsResponse!.value!.items!.length,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  return BlogPostItem(controller.mediumPostsResponse!.value!.items![index]);
                }),
          ),
          CustomPaint(painter: BlogBackgroundPainter(), size: Size.infinite),
        ],
      )),
    );
  }
}
