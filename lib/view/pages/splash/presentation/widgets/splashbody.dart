// ignore: duplicate_ignore
// ignore: depend_on_referenced_packages
// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/core/constants.dart';
import 'package:second/view/pages/on%20boarding/presentation/widgets/onboardingview.dart';
// import 'package:second/screen/createaccount/loginscreen_body.dart';

// import '../../../on boarding/presentation/widgets/onboardingview.dart';

// ignore: camel_case_types
class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

// ignore: camel_case_types
class _splashbodyState extends State<splashbody> {
  @override
  void initState() {
    super.initState();
    goToonboardingview();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: KMainColor,
        body: Center(
          child: SizedBox(
              height: 150,
              width: 250,
              child: Image(image: AssetImage('assets/images/logo.png'))
              //  Text(
              //   'سلامتك',
              //   style: TextStyle(
              //       fontSize: 40, fontWeight: FontWeight.normal, color: Colors.white),
              // ),
              ),
        ));
  }
}

void goToonboardingview() {
  Future.delayed(const Duration(seconds: 1), () {
    Get.to(() => const onboardingview(), transition: Transition.rightToLeft);
  });
}
