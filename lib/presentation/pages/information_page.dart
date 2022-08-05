import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/app/util/url_helper.dart';
import 'package:miladjalali_ir/presentation/controllers/information_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/hero_images.dart';
import 'package:miladjalali_ir/presentation/widgets/home_background_painter.dart';
import 'package:miladjalali_ir/presentation/widgets/social_media_bar_for_mobile.dart';

import '../widgets/home_background_painter_for_mobile.dart';
import '../widgets/rounded_button.dart';
import '../widgets/social_media_bar.dart';
import '../widgets/typewriter.dart';

class InformationPage extends GetResponsiveView<InformationController> {
  InformationPage() : super(settings: ResponsiveScreenSettings(desktopChangePoint: 1000, tabletChangePoint: 768, watchChangePoint: 300));

  @override
  Widget desktop() {
    return Scaffold(
      body: Obx(() => Container(
            width: Get.width,
            height: Get.height,
            child: Stack(
              children: [
                CustomPaint(painter: HomeBackgroundPainter(Colors.lightBlue), size: Size.infinite),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(Get.width * 0.1,0,Get.width * 0.1,0),
                        child: AnimatedSize(
                          vsync: controller,
                          duration: kThemeAnimationDuration,
                          alignment: Alignment.topCenter,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Typewriter(
                                'Hello ...',
                                animate: !controller.helloSeen.value,
                                textStyle: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.4,
                                ),
                                onEnd: () {
                                  controller.showName.value = true;
                                  controller.helloSeen.value = true;
                                  controller.update();
                                },
                              ),
                              if (controller.showName.value) ...[
                                SizedBox(height: 16),
                                Typewriter(
                                  'Milad Jalali',
                                  animate: !controller.nameSeen.value,
                                  textStyle: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  onEnd: () {
                                    controller.showPosition.value = true;
                                    controller.nameSeen.value = true;

                                    controller.update();
                                  },
                                ),
                              ],
                              if (controller.showPosition.value) ...[
                                SizedBox(height: 16),
                                Typewriter(
                                  'Mobile App Developer & UI/UX Designer',
                                  animate: !controller.positionSeen.value,
                                  textStyle: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  onEnd: () {
                                    controller.showAbstract.value = true;
                                    controller.positionSeen.value = true;
                                    controller.update();
                                  },
                                ),
                              ],
                              if (controller.showAbstract.value) ...[
                                SizedBox(height: 24),
                                Typewriter(
                                  "I build neat, cool and scalable mobile apps with Flutter and I'm an aspiring UI-UX Designer.\n"
                                  'I love to learn and build new stuff that are beneficial to the community and cool to work on.\n'
                                  'I also have great interest in the open source community.',
                                  animate: !controller.abstractSeen.value,
                                  textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    letterSpacing: 1.2,
                                    height: 1.3,
                                  ),
                                  onEnd: () {
                                    Future.delayed(Duration(milliseconds: 500), () {
                                      controller.showHireMe.value = true;
                                      controller.abstractSeen.value = true;
                                      controller.update();
                                    });
                                  },
                                ),
                              ],
                              if (controller.showHireMe.value) ...[
                                SizedBox(height: 30),
                                SizedBox(
                                  width: 160,
                                  child: RoundedButton("Hire Me",Colors.orange,Colors.orange,Colors.white,(){
                                    UrlHelper.launchUrl("mailto:miladjalali.dev@gmail.com");
                                  }),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(Get.width * 0.1,0,Get.width * 0.1,0),
                          child:Center(child: HeroImage())),
                    ),
                  ],
                ),
                Align(alignment: Alignment.bottomCenter, child: SocialMediaBar()),
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
                CustomPaint(painter: HomeBackgroundPainterForMobile(Colors.lightBlue), size: Size.infinite),
                Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: HeroImage(),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: AnimatedSize(
                              vsync: controller,
                              duration: kThemeAnimationDuration,
                              alignment: Alignment.topCenter,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: Get.height / 3 / 10,
                                  ),
                                  Typewriter(
                                    'Hello ...',
                                    animate: !controller.helloSeen.value,
                                    textStyle: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1.4,
                                    ),
                                    onEnd: () {
                                      controller.showName.value = true;
                                      controller.helloSeen.value = true;
                                      controller.update();
                                    },
                                  ),
                                  if (controller.showName.value) ...[
                                    SizedBox(height: 16),
                                    Typewriter(
                                      'Milad Jalali',
                                      animate: !controller.nameSeen.value,
                                      textStyle: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      onEnd: () {
                                        controller.showPosition.value = true;
                                        controller.nameSeen.value = true;

                                        controller.update();
                                      },
                                    ),
                                  ],
                                  if (controller.showPosition.value) ...[
                                    SizedBox(height: 16),
                                    Typewriter(
                                      'Mobile App Developer & UI/UX Designer',
                                      animate: !controller.positionSeen.value,
                                      textStyle: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      onEnd: () {
                                        controller.showAbstract.value = true;
                                        controller.positionSeen.value = true;
                                        controller.update();
                                      },
                                    ),
                                  ],
                                  if (controller.showAbstract.value) ...[
                                    SizedBox(height: 24),
                                    Typewriter(
                                      "I build neat, cool and scalable mobile apps with Flutter and I'm an aspiring UI-UX Designer.\n"
                                      'I love to learn and build new stuff that are beneficial to the community and cool to work on.\n'
                                      'I also have great interest in the open source community.',
                                      animate: !controller.abstractSeen.value,
                                      textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        letterSpacing: 1.2,
                                        height: 1.3,
                                      ),
                                      onEnd: () {
                                        Future.delayed(Duration(milliseconds: 500), () {
                                          controller.showHireMe.value = true;
                                          controller.abstractSeen.value = true;
                                          controller.update();
                                        });
                                      },
                                    ),
                                  ],
                                  if (controller.showHireMe.value) ...[
                                    SizedBox(height: 30),
                                    InkWell(
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      onTap: () {
                                        UrlHelper.launchUrl("mailto:miladjalali.dev@gmail.com");
                                      },
                                      onHover: (value) {
                                        controller.hovered.value = value;
                                        controller.update();
                                      },
                                      child: AnimatedContainer(
                                        height: 50,
                                        width: 160,
                                        duration: kThemeAnimationDuration,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1.4, color: Colors.teal),
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          color: controller.hovered.value ? Colors.teal.withOpacity(1.0) : Colors.transparent,
                                        ),
                                        child: AnimatedDefaultTextStyle(
                                          duration: kThemeAnimationDuration,
                                          style: TextStyle(
                                            color: controller.hovered.value ? Colors.white : Colors.teal,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Ubuntu',
                                          ),
                                          child: Text(
                                            'Hire Me',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(alignment: Alignment.bottomRight, child: SocialMediaBarForMobile()),
              ],
            ),
          )),
    );
  }

}
