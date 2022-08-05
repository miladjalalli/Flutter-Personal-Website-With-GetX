import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/domain/entities/portfolio.dart';

import '../widgets/portfolio_widget.dart';

class ProjectsController extends GetxController with GetTickerProviderStateMixin {
  late List<PortfolioWidget> portfolios;
  RxInt selectedIndex = 0.obs;

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
      "Koohmart",
      "Koohmart Services",
      "Koohmart is a specialized software for buying and selling mountaineering equipment.\n\nAlso, in this software there is information about different peaks and you can find the way to reach the peak and reach the peak with the help of the software.",
      ["assets/images/kohmart_1.png", "assets/images/kohmart_2.png", "assets/images/kohmart_3.png", "assets/images/kohmart_4.png"],
      "https://play.google.com/store/apps/details?id=ir.itamin.koohposh&hl=en&gl=US",
    )));


    portfolios.add(MobilePortfolio(Portfolio(
        0,
        "Kargozare Man",
        "Kargozare Man Services",
        "Kargozareman is an online insurance service system that is available in mobile and web versions, and users can get the services they need online.\n\nThis system can be used by employers, retirees and employees",
        ["assets/images/kargozare_man_1.png", "assets/images/kargozare_man_2.png", "assets/images/kargozare_man_3.png", "assets/images/kargozare_man_4.png"],
        "https://kargozareman.com",
    )));

    portfolios.add(WebPortfolio(Portfolio(
        0,
        "Orthobiomed Inc",
        "Orthobiomed Services",
        "Ortho BioMed Inc. is a multi-scope company working in the medical landscape by innovating on and distributing cutting-edge medical technologies available to medical experts and patients, and providing a broad range of expertise-based clinical research services to other medical device manufacturers.\n\nOrtho BioMed Inc. operates primarily in North America, with headquarters located in Toronto, ON, Canada and is known in the medical industry for its timely and reliable services in a variety of areas and its flexibility in meeting clients’ needs.",
        ["assets/images/orthobiomed_1.png","assets/images/orthobiomed_2.png","assets/images/orthobiomed_3.png"],
        "https://orthobiomed.ca",
    )));

  }
}
