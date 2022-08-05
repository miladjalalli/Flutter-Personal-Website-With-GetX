import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/controllers/experiences_controller.dart';
import 'package:miladjalali_ir/presentation/controllers/projects_controller.dart';


class ExperiencesPage extends GetResponsiveView<ExperiencesController> {
  ExperiencesPage() : super(settings: ResponsiveScreenSettings(desktopChangePoint: 1000, tabletChangePoint: 768, watchChangePoint: 300));

  @override
  Widget desktop() {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Experiences"),
            SizedBox(height: 32,),
            Text("Not Completed Yet!"),
          ],
        ),
      ),
    );
  }

  @override
  Widget phone() {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: Get.width,
        height: Get.height,
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Experiences"),
            SizedBox(height: 32,),
            Text("Not Completed Yet!"),
          ],
        )),
      ),
    );
  }
}
