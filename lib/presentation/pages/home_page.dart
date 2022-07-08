import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/controllers/home_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/drawer.dart';
import 'dart:html' as html;
import '../widgets/nav_bar.dart';

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
