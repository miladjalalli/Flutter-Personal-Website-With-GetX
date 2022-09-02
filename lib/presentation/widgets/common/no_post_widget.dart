import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class NoPostWidget extends StatelessWidget {
  const NoPostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/no_posts_yet.gif",
            fit: BoxFit.cover,
            width: 300,
            height: 300,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "No Post Yet!",
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
