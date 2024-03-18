// ignore_for_file: camel_case_types, depend_on_referenced_packages, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second/view/pages/tips/tipsdiabeticpatientpage_body.dart';
import 'package:second/view/pages/tips/tipsgeneraltpage_body.dart';
import 'package:second/view/pages/tips/tipsheartpatientpage_body.dart';
import 'package:second/view/pages/tips/tipshypertensivepatientpage_body.dart';
// import 'package:second/screen/pages/tipsgeneraltpage_body.dart';

class Medicaltipspage_body extends StatefulWidget {
  const Medicaltipspage_body({super.key});

  @override
  State<Medicaltipspage_body> createState() => _Medicaltipspage_bodyState();
}

class _Medicaltipspage_bodyState extends State<Medicaltipspage_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(29),
              height: 40,
              width: 200,
              child: const Text(
                'أهم النصائح الطبية',
                style: TextStyle(fontSize: 25, fontFamily: 'cairo'),
              ),
            ),
          ],
        ),
        SizedBox(
            height: 700,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                          width: 250,
                          child: Image(
                            image: AssetImage('assets/images/he2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            goTotipsheartpatientpage_body();
                          },
                          child: const Text(
                            ' مريض ضعف عضلة القلب',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                          width: 230,
                          child: Image(
                            image: AssetImage('assets/images/h1.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            goTotipshypertensivepatientpage_body();
                          },
                          child: const Text(
                            'مريض أرتفاع ضغط الدم',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                          width: 220,
                          child: Image(
                            image: AssetImage('assets/images/s1.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            goTotipsdiabeticpatientpage_body();
                          },
                          child: const Text(
                            'مريض السكر',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                          width: 220,
                          child: Image(
                            image: AssetImage('assets/images/55.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            goTotipsgeneraltpage_body();
                          },
                          child: const Text(
                            'نصائح طبية عامة ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    )),
              ],
            ))
      ],
    ));
  }
}

goTotipsheartpatientpage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const tipsheartpatientpage_body(),
        transition: Transition.rightToLeft);
  });
}

goTotipshypertensivepatientpage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const tipshypertensivepatientpage_body(),
        transition: Transition.rightToLeft);
  });
}

goTotipsdiabeticpatientpage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const tipsdiabeticpatientpage_body(),
        transition: Transition.rightToLeft);
  });
}
goTotipsgeneraltpage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const tipsgeneraltpage_body(),
        transition: Transition.rightToLeft);
  });
}
