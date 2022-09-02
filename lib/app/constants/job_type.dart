enum JobType{
  fullTime,
  partTime,
  contract,
  internship,
  temporary,
}

extension JobTypeExtension on JobType{

  String get getName {
    if (this == JobType.fullTime)
      return "Full Time";
    else if (this == JobType.partTime)
      return "Part Time";
    else if (this == JobType.contract)
      return "Contract";
    else if (this == JobType.internship)
      return "Internship";
    else if (this == JobType.temporary)
      return "Temporary";
    else
      return "Full Time";
  }
}
