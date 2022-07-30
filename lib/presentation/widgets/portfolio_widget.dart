import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/util/url_helper.dart';
import '../../domain/entities/portfolio.dart';
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
                          SizedBox(height: 32,),
                          Typewriter(
                            portfolio.descriptionHeader,
                            animate: portfolio.showDescription,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                            onEnd: () {
                              portfolio.showDescription = true;
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Typewriter(
                            portfolio.description,
                            animate: portfolio.showDescription,
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
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        child: CarouselSlider(
                          options: CarouselOptions(viewportFraction: 1.914, autoPlay: true, autoPlayAnimationDuration: Duration(milliseconds: 1)),
                          items: portfolio.images.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Image(
                                  image: AssetImage(
                                    i,
                                  ),
                                  height: Get.height / 2,
                                  width: Get.height / 2 * 0.5222,
                                  fit: BoxFit.fill,
                                );
                              },
                            );
                          }).toList(),
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
                                animate: portfolio.showTitle,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.4,
                                ),
                                duration: Duration(seconds: 3),
                                onEnd: () {
                                  portfolio.showTitle = true;
                                },
                              ),
                              SizedBox(width: 16,),
                              Icon(Icons.link,color: Colors.white,size: 48,),
                            ],
                          ),
                        ),
                        SizedBox(height: 32,),
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
    return Text("");
  }
}

class WebPortfolio extends PortfolioWidget {
  WebPortfolio(Portfolio portfolio) : super(portfolio);

  @override
  Widget desktop() {
    return Text("");
  }

  @override
  Widget phone() {
    return Text("");
  }
}
