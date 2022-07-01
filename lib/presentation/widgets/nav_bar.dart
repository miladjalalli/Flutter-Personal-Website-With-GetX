import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/app/utils/url_helper.dart';
import 'package:miladjalali_ir/presentation/controllers/home_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/rounded_button.dart';

import '../../app/utils/styles.dart';

class Navbar extends GetResponsiveView<HomeController> {

  @override
  Widget desktop() {
    return Container(
      height: 72,
      width: double.infinity,
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
                    backgroundColor: Colors.orange,
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
                        color: Colors.black.withOpacity(0.75),
                        fontSize: 18,
                        fontFamily: 'Ubuntu',
                      ),
                      children: [
                        TextSpan(
                          text: ' Jalali',
                          style: Styles.navBarTextStyle.copyWith(
                            color: Colors.orange,
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
                      case 'Home':
                      case 'About':
                            controller.navBarSelectedIndex.value = controller.items.indexOf(item);
                            controller.onNavbarItemSelected(controller.navBarSelectedIndex);
                            break;
                      case 'Resume':
                        break;
                      case 'Blog':
                        UrlHelper.launchUrl(
                          'https://medium.com/@miladjalali',
                        );
                        break;
                      default:
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
                            controller.navBarSelectedIndex == controller.items.indexOf(item)
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
    );
  }

  @override
  Widget phone() {
    return Container(
      height: 56,
      padding: const EdgeInsets.fromLTRB(16,0,16,0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
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
            Expanded(child: Text("")),
          ],
        ),
    )
    ;
  }
}

