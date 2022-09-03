import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:miladjalali_ir/app/constants/themes.dart';
import 'package:miladjalali_ir/presentation/home/home_binding.dart';
import 'package:miladjalali_ir/presentation/home/home_page.dart';

import '../app/util/web_scroll_behavior.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      theme: Themes.themeBlueOrange,
      scrollBehavior: WebScrollBehavior(),
      title: "Milad Jalali | Developer, Designer and Teacher",
      home: HomePage(),
    );
  }
}
