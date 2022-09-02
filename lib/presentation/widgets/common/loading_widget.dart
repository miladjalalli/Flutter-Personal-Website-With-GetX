import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitDualRing(
            color: Get.theme.accentColor,
            size: 48,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Loading",
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
