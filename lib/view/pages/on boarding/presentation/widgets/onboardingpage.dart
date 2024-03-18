// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/core/custom_button.dart';
import 'package:second/view/pages/on%20boarding/presentation/widgets/onboardingbody.dart';
import 'package:second/view/pages/on%20boarding/presentation/widgets/pageviewbody.dart';

// ignore: camel_case_types
class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

// ignore: camel_case_types
class _onboarding1State extends State<onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 350,
          width: 350,
          child: PageView(
            children: const [
              pageviewbody(
                image: 'assets/images/onboard1.png',
                title: ' سنقدم لك كل المساعدات الطبيه التي تحتاجها',
              ),
              pageviewbody(
                image: 'assets/images/onboard2.png',
                title: ' سنساعدك في تقديم خدمتك الطبية بكل سهوله',
              ),
              pageviewbody(
                image: 'assets/images/brd3.png',
                title: 'ابحث عن علاجك عند اشهر الصيدليات ',
              ),
              pageviewbody(
                image: 'assets/images/brd4.png',
                title: 'قم بالحـجز مع افضل الاطـباء المتخصصين',
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
          child: Text(
            '    سـتجد كل ما تحتاجه من خدمات طبية ونصائح تساعدك في'
            '  تحسين حالتك الصحية والبحث عن اشهر العيادات '
            ' التخصصية والحجز معهم وطلب الدواء من اشهر الصيدليات و تقديم الخدمة الطبية بعد التسجيل',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
            textDirection: TextDirection.rtl,
          ),
        ),
        CustomGeneralButton(
          onTap: () {
            goToNextView();
          },
          text: 'تخطي',
          height: 70,
          width: 150,
          fontsize: 15,
        ),
      ],
    );
  }
}

goToNextView() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const OnBoardingbody(), transition: Transition.rightToLeft);
  });
}
