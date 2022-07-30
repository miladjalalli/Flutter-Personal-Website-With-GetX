import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/app/util/url_helper.dart';
import 'package:miladjalali_ir/presentation/controllers/home_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/rounded_button.dart';

import '../../app/util/styles.dart';


class AppDrawer extends GetView<HomeController>{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Obx(()=>Container(
        color: controller.navBarSelectedIndex.value==1?Colors.black.withOpacity(0.75):Colors.lightBlue,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 8,
              top: 8,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: controller.items.map((item) {
                return InkWell(
                  onTap: () {
                    switch (item) {
                      case 'Resume':
                        break;
                      case 'Blog':
                        UrlHelper.launchUrl(
                          'https://medium.com/@debrahkwesibuabeng2',
                        );
                        break;
                      default:
                        controller.navBarSelectedIndex.value = controller.items.indexOf(item);
                        controller.onNavbarItemSelected(controller.navBarSelectedIndex.toInt());
                        break;
                    }

                    Navigator.pop(context);
                  },
                  child: item == 'Resume'
                      ? SizedBox(width: 160, child: RoundedButton("Resume",Colors.white,Colors.white,Colors.lightBlue, (){
                    UrlHelper.downloadResume();
                  }))
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
                          color: controller.selectedIndex.value == controller.items.indexOf(item)
                              ? Colors.white
                              : Colors.transparent,
                        ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      )),
    );
  }
}