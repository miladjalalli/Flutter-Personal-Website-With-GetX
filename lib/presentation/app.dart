import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:miladjalali_ir/presentation/controllers/home_binding.dart';
import 'package:miladjalali_ir/presentation/pages/home_page.dart';

import '../app/util/web_scroll_behavior.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightBlue, primaryColorDark: Colors.blue, accentColor: Colors.orange),
      scrollBehavior: WebScrollBehavior(),
      home: HomePage(),
    );
  }
}
