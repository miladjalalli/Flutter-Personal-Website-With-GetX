import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/domain/entities/experience.dart';
import 'package:miladjalali_ir/domain/entities/portfolio.dart';

import '../../app/constants/job_type.dart';
import '../../app/constants/work_places.dart';
import '../widgets/portfolio_widget.dart';

class ExperiencesController extends GetxController with GetTickerProviderStateMixin {
  RxList<Experience> experiences = <Experience>[].obs;

  @override
  void onInit() {
    addExperiences();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void addExperiences() {
    experiences.add(Experience(
        companyTitle: "Nicode",
        companyLogo: AssetImage("assets/images/nicode.jpg"),
        startDate: "08/07/2022",
        endDate: "08/07/2022",
        jobPosition: "Android Developer",
        jobType: JobType.fullTime,
        workplaces: Workplaces.onSite,
        description: ""));

    experiences.add(Experience(
        companyTitle: "Nicode",
        companyLogo: AssetImage("assets/images/nicode.jpg"),
        startDate: "08/07/2022",
        endDate: "08/07/2022",
        jobPosition: "Android Developer",
        jobType: JobType.fullTime,
        workplaces: Workplaces.onSite,
        description: ""));

    experiences.add(Experience(
        companyTitle: "Nicode",
        companyLogo: AssetImage("assets/images/nicode.jpg"),
        startDate: "08/07/2022",
        endDate: "08/07/2022",
        jobPosition: "Android Developer",
        jobType: JobType.fullTime,
        workplaces: Workplaces.onSite,
        description: ""));

    experiences.add(Experience(
        companyTitle: "Nicode",
        companyLogo: AssetImage("assets/images/nicode.jpg"),
        startDate: "08/07/2022",
        endDate: "08/07/2022",
        jobPosition: "Android Developer",
        jobType: JobType.fullTime,
        workplaces: Workplaces.onSite,
        description: ""));
  }
}
