import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:pim_core/utils/app_assets.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.assetsLoginSvg,
          ),
          Text(
            'Welcome To My App',
            style: context.textTheme.titleMedium
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'In this app we will learn how to implement in app purchase',
            style: context.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GFButton(
                onPressed: () {},
                text: "Google",
                color: const Color(0xffF85530),
                icon: const ImageIcon(
                  NetworkImage(
                      'http://pngimg.com/uploads/google/google_PNG19635.png'),
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GFButton(
                onPressed: () {},
                text: "Facebook",
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GFButton(
                onPressed: () {},
                text: "Apple",
                color: Colors.black,
                icon: const Icon(
                  Icons.apple,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
