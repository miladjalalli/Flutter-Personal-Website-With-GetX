import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/app/constants/job_type.dart';
import 'package:miladjalali_ir/app/constants/timeline_status.dart';
import 'package:miladjalali_ir/app/constants/work_places.dart';
import 'package:miladjalali_ir/presentation/controllers/experiences_controller.dart';
import 'package:miladjalali_ir/presentation/controllers/projects_controller.dart';
import 'package:miladjalali_ir/presentation/widgets/experience_time_line_widget.dart';

import '../../domain/entities/experience.dart';
import '../widgets/experience_background_painter.dart';


class ExperiencesPage extends GetResponsiveView<ExperiencesController> {
  ExperiencesPage() : super(settings: ResponsiveScreenSettings(desktopChangePoint: 1000, tabletChangePoint: 768, watchChangePoint: 300));

  @override
  Widget desktop() {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            CustomPaint(painter: ExperienceBackgroundPainter(Colors.white), size: Size.infinite),
            Center(child: ExprienceTimeLineWidget(controller.experiences.value)),
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
