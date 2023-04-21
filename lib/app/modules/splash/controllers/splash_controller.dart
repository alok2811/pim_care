import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pim_core/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  Widget flutterIcon = const FlutterLogo(
    size: 200,
  );

  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(
        const Duration(seconds: 3), () => Get.offNamed(Routes.WELCOME));
    super.onInit();
  }
}
