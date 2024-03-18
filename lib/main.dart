// ignore_for_file: unused_import, depend_on_referenced_packages, avoid_print
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:http/http.dart';
import 'package:second/view/pages/on%20boarding/presentation/widgets/onboardingbody.dart';
import 'package:second/view/pages/on%20boarding/presentation/widgets/onboardingpage.dart';
import 'package:second/view/pages/splash/presentation/widgets/splashview.dart';
import 'package:second/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final String apiKey = 'salamtak_api_123';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'cairo'),
      debugShowCheckedModeBanner: false,
      home: const splash(),
    );
  }
}

// Future getGroup() async {
//   final res =
//       await post(Uri.parse('http://salamtak.today/api/category/get'), body: {
//     'apiKey': 'salamtak_api_123',
//   });
//   if (res.statusCode == 200) {
//     return json.decode(res.body);
//     // group=data['group'];
//   } else {
//     print("Error");
//   }
// }
