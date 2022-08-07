import 'package:flutter/widgets.dart';

import '../../app/constants/job_type.dart';
import '../../app/constants/work_places.dart';

class Experience {
  late String companyTitle;
  late ImageProvider companyLogo;
  late String startDate;
  late String endDate;
  late String jobPosition;
  late JobType jobType;
  late Workplaces workplaces;
  late String description;

  Experience(
      {required this.companyTitle,
      required this.companyLogo,
      required this.startDate,
      required this.endDate,
      required this.jobPosition,
      required this.jobType,
      required this.workplaces,
      required this.description});
}
