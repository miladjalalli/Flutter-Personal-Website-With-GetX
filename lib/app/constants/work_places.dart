enum Workplaces {
  onSite,
  remote,
  hybrid,
}

extension WorkplacesExtension on Workplaces{

  String get getName {
    if (this == Workplaces.onSite)
      return "On Site";
    else if (this == Workplaces.remote)
      return "Remote";
    else if (this == Workplaces.hybrid)
      return "Hybrid";
    else
      return "On Site";
  }
}