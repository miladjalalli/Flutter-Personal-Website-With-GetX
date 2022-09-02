import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/blog/blog_page.dart';
import 'package:miladjalali_ir/presentation/experiences/experiences_binding.dart';
import 'package:miladjalali_ir/presentation/information/information_binding.dart';
import 'package:miladjalali_ir/presentation/information/information_page.dart';
import '../../app/constants/themes.dart';
import '../about/about_binding.dart';
import '../about/about_page.dart';
import '../blog/blog_binding.dart';
import '../experiences/experiences_page.dart';
import '../information/information_controller.dart';
import '../projects/projects_page.dart';
import '../projects/projets_binding.dart';

class HomeController extends GetxController {


  RxInt selectedIndex = 0.obs;
  RxInt navBarSelectedIndex = 0.obs;
  RxList<Widget> pages = [InformationPage(),AboutPage(),ExperiencesPage(),ProjectsPage(),BlogPage()].obs;

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
        InformationBinding().dependencies();
        Get.changeTheme(Themes.themeBlueOrange);
        break;
      case 1:
        AboutBinding().dependencies();
        Get.changeTheme(Themes.themeBlackOrange);
        break;
      case 2:
        ExperiencesBinding().dependencies();
        Get.changeTheme(Themes.themePurpleOrange);
        break;
      case 3:
        ProjectsBinding().dependencies();
        Get.changeTheme(Themes.themeOrangeOrange);
        break;
      case 4:
        BlogBinding().dependencies();
        Get.changeTheme(Themes.themeBlackOrange);
        break;
    }
  }

  @override
  void onInit() {
    Get.put(InformationController());
    super.onInit();
  }

  onNavbarItemSelected(int v){
    selectedIndex.value = v;
    onIndexChanged();
    update();
  }
}