import 'package:fading_images_slider/fading_images_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/util/url_helper.dart';
import '../../domain/entities/portfolio.dart';
import 'custom_image_slider.dart';
import 'home_background_painter.dart';
import 'typewriter.dart';

abstract class PortfolioWidget extends GetResponsiveView {
  PortfolioWidget(this.portfolio);

  Portfolio portfolio;

  @override
  Widget desktop();

  @override
  Widget phone();
}

class MobilePortfolio extends PortfolioWidget {
  MobilePortfolio(Portfolio portfolio) : super(portfolio);

  @override
  Widget desktop() {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.grey.shade300,
        child: Stack(
          children: [
            CustomPaint(painter: HomeBackgroundPainter(Colors.orange), size: Size.infinite),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 64),
                            child: Image(
                              image: AssetImage("assets/images/ic_arrow_top_to_right.png"),
                              width: 600,
                              height: 300,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Typewriter(
                            portfolio.descriptionHeader,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Typewriter(
                            portfolio.description,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.height / 2 * 0.5222 + 16,
                  child: Stack(
                    children: [
                      Container(
                        height: Get.height / 2,
                        width: Get.height / 2 * 0.5222,
                        decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: Get.height / 2 * 0.5222,
                          height: Get.height / 2,
                          child: CustomImageSlider(
                            images: portfolio.images,
                            useLocalAssetImages: true,
                            duration: Duration(seconds: 3),
                            width: Get.height / 2 * 0.5222,
                            height: Get.height / 2,
                          ),
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/mobile_frame.png",
                        ),
                        height: Get.height / 2,
                        width: Get.height / 2 * 0.5222,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            UrlHelper.launchUrl(portfolio.link);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Typewriter(
                                portfolio.title,
                                animate: false,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.4,
                                ),
                                duration: Duration(seconds: 3),
                                onEnd: () {},
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(
                                Icons.link,
                                color: Colors.white,
                                size: 48,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Image(
                          image: AssetImage("assets/images/ic_arrow_top_to_left.png"),
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget phone() {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.grey.shade300,
        child: Stack(
          children: [
            CustomPaint(painter: HomeBackgroundPainter(Colors.orange), size: Size.infinite),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            UrlHelper.launchUrl(portfolio.link);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Typewriter(
                                portfolio.title,
                                animate: false,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.4,
                                ),
                                duration: Duration(seconds: 3),
                                onEnd: () {},
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(
                                Icons.link,
                                color: Colors.white,
                                size: 36,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        RotatedBox(
                            quarterTurns: 3,
                            child: Image(
                              image: AssetImage("assets/images/ic_arrow_top_to_left.png"),
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: Get.height / 2 * 0.5222 + 16,
                    child: Stack(
                      children: [
                        Container(
                          height: Get.height / 2,
                          width: Get.height / 2 * 0.5222,
                          decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
                          child: CustomImageSlider(
                            images: portfolio.images,
                            useLocalAssetImages: true,
                            duration: Duration(seconds: 3),
                            width: Get.height / 2 * 0.5222,
                            height: Get.height / 2,
                          ),
                        ),
                        Image(
                          image: AssetImage(
                            "assets/images/mobile_frame.png",
                          ),
                          height: Get.height / 2,
                          width: Get.height / 2 * 0.5222,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Image(
                                image: AssetImage("assets/images/ic_arrow_top_to_right.png"),
                                width: 300,
                                height: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Typewriter(
                            portfolio.descriptionHeader,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Typewriter(
                            portfolio.description,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WebPortfolio extends PortfolioWidget {
  WebPortfolio(Portfolio portfolio) : super(portfolio);

  @override
  Widget desktop() {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.grey.shade300,
        child: Stack(
          children: [
            CustomPaint(painter: HomeBackgroundPainter(Colors.orange), size: Size.infinite),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 64),
                            child: Image(
                              image: AssetImage("assets/images/ic_arrow_top_to_right.png"),
                              width: 600,
                              height: 300,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Typewriter(
                            portfolio.descriptionHeader,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Typewriter(
                            portfolio.description,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 4  + 16,
                  child: Stack(
                    children: [
                      Container(
                        width: Get.width / 4,
                        height: Get.width / 4 * 0.7279,
                        decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: Get.width ,
                          height: Get.width / 4 * 0.7279,
                          child: CustomImageSlider(
                            images: portfolio.images,
                            useLocalAssetImages: true,
                            duration: Duration(seconds: 3),
                            width: Get.width / 4,
                            height: Get.width / 4 * 0.7279,
                          ),
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/laptop_frame.png",
                        ),
                        height: Get.width / 4 * 0.7279,
                        width: Get.width / 4,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            UrlHelper.launchUrl(portfolio.link);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Typewriter(
                                portfolio.title,
                                animate: false,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.4,
                                ),
                                duration: Duration(seconds: 3),
                                onEnd: () {},
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(
                                Icons.link,
                                color: Colors.white,
                                size: 48,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Image(
                          image: AssetImage("assets/images/ic_arrow_top_to_left.png"),
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget phone() {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.grey.shade300,
        child: Stack(
          children: [
            CustomPaint(painter: HomeBackgroundPainter(Colors.orange), size: Size.infinite),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            UrlHelper.launchUrl(portfolio.link);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Typewriter(
                                portfolio.title,
                                animate: false,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.4,
                                ),
                                duration: Duration(seconds: 3),
                                onEnd: () {},
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(
                                Icons.link,
                                color: Colors.white,
                                size: 36,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        RotatedBox(
                            quarterTurns: 3,
                            child: Image(
                              image: AssetImage("assets/images/ic_arrow_top_to_left.png"),
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width / 3*2  + 16,
                    height: Get.height / 2,
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            width: Get.width / 3*2,
                            height: Get.width / 3*2* 0.7279,
                            decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              width: Get.width ,
                              height: Get.width / 3*2 * 0.7279,
                              child: CustomImageSlider(
                                images: portfolio.images,
                                useLocalAssetImages: true,
                                duration: Duration(seconds: 3),
                                width: Get.width / 3*2,
                                height: Get.width / 3*2 * 0.7279,
                              ),
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              "assets/images/laptop_frame.png",
                            ),
                            height: Get.width / 3*2 * 0.7279,
                            width: Get.width / 3*2,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Image(
                                image: AssetImage("assets/images/ic_arrow_top_to_right.png"),
                                width: 300,
                                height: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Typewriter(
                            portfolio.descriptionHeader,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Typewriter(
                            portfolio.description,
                            animate: false,
                            textStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
