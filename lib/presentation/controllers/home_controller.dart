import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/controllers/information_controller.dart';
import 'package:miladjalali_ir/presentation/pages/information_page.dart';

class HomeController extends GetxController {


  RxInt selectedIndex = 0.obs;
  RxInt navBarSelectedIndex = 0.obs;
  List<Widget> pages = [InformationPage()];

  var scaffoldKey = GlobalKey<ScaffoldState>();


  final items = [
    'Home',
    'About',
    'Experience',
    'Projects',
    'Blog',
    'Resume',
  ];

  void onIndexChanged(){
    switch(selectedIndex.value){
      case 0:
        Get.put(InformationController());
        break;
    }
  }

  @override
  void onInit() {
    Get.put(InformationController());
    super.onInit();
  }

  onNavbarItemSelected(v){
    selectedIndex = v;
    update();
  }
}