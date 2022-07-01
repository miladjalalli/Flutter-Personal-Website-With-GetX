import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationController extends GetxController with GetTickerProviderStateMixin {

  RxBool helloSeen = false.obs;
  RxBool nameSeen = false.obs;
  RxBool positionSeen = false.obs;
  RxBool abstractSeen = false.obs;
  RxBool showName = false.obs;
  RxBool showPosition = false.obs;
  RxBool showAbstract = false.obs;
  RxBool showHireMe = false.obs;
  RxBool hovered = false.obs;

}