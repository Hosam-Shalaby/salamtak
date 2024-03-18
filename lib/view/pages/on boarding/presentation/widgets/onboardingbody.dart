// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/core/custom_button.dart';
import 'package:second/view/pages/botnavbar.dart';
import 'package:second/view/pages/createaccount/loginscreen_body.dart';
// import 'package:second/screen/service%20provider%20auth/serviceprovider.dart';

// import '../../../auth/presentation/pages/loginscreenview.dart';

class OnBoardingbody extends StatefulWidget {
  const OnBoardingbody({super.key});

  @override
  State<OnBoardingbody> createState() => _OnBoardingbodyState();
}

class _OnBoardingbodyState extends State<OnBoardingbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              width: 400,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/onboard3.png',
                    fit: BoxFit.fill,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   height: 550,
                  //   width: 600,
                  //   child: Stack(
                  //     children: [
                  //       Image.asset(
                  //         'assets/images/onboard3.png',
                  //         fit: BoxFit.fill,
                  //       ),
                  // const Positioned(
                  //   top: 400,
                  //   left: 70,
                  //   child: Text(
                  //     '                    ..... مرحباً بك ',
                  //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // const Positioned(
                  //   top: 490,
                  //   left: 50,
                  //   child: Text(
                  //     // 'نحن هنا سنساعدك في عرض خدمتك او الاستفاده من الخدمات المقدمة سوف نكون سعداء بنضمامك الينا',
                  //     'سوف نكون سعداء بإنضمامك إلينا',
                  //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '   ..... مرحـباً بك',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '  سـوف نكون سعـداء بإنضـمامك إلينا',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomGeneralButton(
                    onTap: () {
                      goTologinscreen_body();
                    },
                    height: 60,
                    width: 250,
                    fontsize: 20,
                    text: 'تسجيل دخول',
                  ),
                  CustomGeneralButton(
                    onTap: () {
                      goTobotnavbar();
                    },
                    height: 60,
                    width: 250,
                    fontsize: 20,
                    text: 'تخطي',
                  ),
                  // CustomGeneralButton(
                  //   onTap: () {
                  //     goToNextView();
                  //   },
                  //   height: 60,
                  //   width: 160,
                  //   fontsize: 16,
                  //   text: 'مستخدم',
                  // ),
                  // CustomGeneralButton(
                  //   onTap: () {
                  //     goToserviceView();
                  //   },
                  //   height: 60,
                  //   width: 160,
                  //   fontsize: 15,
                  //   text: 'مقدم خدمة',
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

goTologinscreen_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const loginscreen_body(), transition: Transition.rightToLeft);
  });
}

goTobotnavbar() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const botnavbar(), transition: Transition.rightToLeft);
  });
}
