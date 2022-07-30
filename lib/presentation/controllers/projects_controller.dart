import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/domain/entities/portfolio.dart';

import '../widgets/portfolio_widget.dart';

class ProjectsController extends GetxController with GetTickerProviderStateMixin {
  late List<PortfolioWidget> portfolios;

  @override
  void onInit() async{
    portfolios = <PortfolioWidget>[].obs;

    addPortfolio();

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

  void addPortfolio() async{

    portfolios.add(MobilePortfolio(Portfolio(
        0,
        "Kargozare Man",
        "Kargozare Man Services",
        "Kargozareman is an online insurance service system that is available in mobile and web versions, and users can get the services they need online.\n\nThis system can be used by employers, retirees and employees",
        ["assets/images/kargozare_man.png", "assets/images/kargozare_man.png", "assets/images/kargozare_man.png"],
        "https://kargozareman.com",
        false,
        false,
    )));
  }
}
