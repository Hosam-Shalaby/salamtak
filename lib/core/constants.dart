// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/view/pages/on%20boarding/presentation/widgets/onboardingbody.dart';


// const KMainColor = Color.fromARGB(255, 46, 156, 55);
// ignore: constant_identifier_names
const KMainColor = Color(0xff034854);
// const KMainColor = Color.fromARGB(255, 59, 133, 194);
// const KMainColor = Color.fromARGB(255, 4, 102, 102);

goToNextView() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const OnBoardingbody(), transition: Transition.rightToLeft);
  });
}
