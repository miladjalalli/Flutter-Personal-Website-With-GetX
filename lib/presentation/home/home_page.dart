import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/home/home_controller.dart';
import 'dart:html' as html;
import '../widgets/common/nav_bar.dart';
import '../widgets/mobile/drawer.dart';

class HomePage extends GetResponsiveView<HomeController> {



  @override
  Widget phone() {

    // Add the File Saver js script
    final script = html.document.createElement('script') as html.ScriptElement;
    script.src = "https://cdn.jsdelivr.net/g/filesaver.js";
    html.document.body?.nodes.add(script);

    return Scaffold(
      key: controller.scaffoldKey,
      endDrawer: AppDrawer(),
      body: Stack(
        children: [
          Obx(() => Container(
            width: Get.width,
            height: Get.height,
            child: controller.pages[controller.selectedIndex.value],
          )),
          Align(
            alignment: Alignment.topCenter,
            child: Navbar(),
          ),
        ],
      ),
    );
  }

  @override
  Widget desktop() {

    // Add the File Saver js script
    final script = html.document.createElement('script') as html.ScriptElement;
    script.src = "https://cdn.jsdelivr.net/g/filesaver.js";
    html.document.body?.nodes.add(script);

    return Scaffold(
      body: Stack(
        children: [
          Obx(() => Container(
            width: Get.width,
            height: Get.height,
            child: controller.pages[controller.selectedIndex.value],
          )),
          Align(
            alignment: Alignment.topCenter,
            child: Navbar(),
          ),
        ],
      ),
    );
  }
}
