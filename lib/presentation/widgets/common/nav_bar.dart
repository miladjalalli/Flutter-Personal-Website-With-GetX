import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/app/util/url_helper.dart';
import 'package:miladjalali_ir/presentation/home/home_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/common/rounded_button.dart';

import 'package:miladjalali_ir/app/util/styles.dart';

class Navbar extends GetResponsiveView<HomeController> {

  Navbar():super(settings: ResponsiveScreenSettings(desktopChangePoint: 1000, tabletChangePoint: 768, watchChangePoint: 300));

  @override
  Widget desktop() {
    return Obx(()=>Container(
      height: 72,
      width: double.infinity,
      color: controller.navBarSelectedIndex.value==1?Colors.black.withOpacity(0.75):Colors.transparent,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(Get.width * 0.1,0,Get.width * 0.1,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Get.theme.accentColor,
                    radius: 15,
                    child: Text(
                      'M',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Milad',
                      style: Styles.navBarTextStyle.copyWith(
                        color: (controller.navBarSelectedIndex.value==1 || controller.navBarSelectedIndex.value==2)?Colors.white:Colors.black.withOpacity(0.75),
                        fontSize: 18,
                        fontFamily: 'Ubuntu',
                      ),
                      children: [
                        TextSpan(
                          text: ' Jalali',
                          style: Styles.navBarTextStyle.copyWith(
                            color: Get.theme.accentColor,
                            fontSize: 18,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: controller.items.map((item) {
                return InkWell(
                  onTap: () {
                    switch (item) {
                      case 'Resume':
                        break;
                      default:
                        controller.navBarSelectedIndex.value = controller.items.indexOf(item);
                        controller.onNavbarItemSelected(controller.navBarSelectedIndex.toInt());
                        controller.update();
                        break;
                    }
                  },
                  child: item == 'Resume'
                      ? RoundedButton("Resume",Colors.white,Colors.white,Colors.lightBlue, (){
                    UrlHelper.downloadResume();
                  })
                      : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item,
                        style: Styles.navBarTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Styles.navBarTextStyle.color?.withOpacity(
                            controller.navBarSelectedIndex.value == controller.items.indexOf(item)
                                ? 1.0
                                : 0.75,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      if (item != 'Resume')
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 2,
                          width: 20,
                          color: controller.navBarSelectedIndex == controller.items.indexOf(item)
                              ? Colors.white
                              : Colors.transparent,
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget phone() {
    return Obx(()=>Container(
      height: 56,
      width: Get.width,
      color: controller.navBarSelectedIndex.value==1?Colors.black.withOpacity(0.75):Colors.transparent,
      padding: const EdgeInsets.fromLTRB(16,0,16,0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              color: Colors.white,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(Icons.menu),
              onPressed: () {
                controller.scaffoldKey.currentState?.openEndDrawer();
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8,0,16,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Milad',
                      style: Styles.navBarTextStyle.copyWith(
                        color: (controller.navBarSelectedIndex.value==1 || controller.navBarSelectedIndex.value==2)?Colors.white:Colors.black.withOpacity(0.75),
                        fontSize: 18,
                        fontFamily: 'Ubuntu',
                      ),
                      children: [
                        TextSpan(
                          text: ' Jalali',
                          style: Styles.navBarTextStyle.copyWith(
                            color: Get.theme.accentColor,
                            fontSize: 18,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Text("")),
          ],
        ),
    ))
    ;
  }

}

