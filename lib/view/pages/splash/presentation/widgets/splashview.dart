// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:second/core/constants.dart';
import 'package:second/view/pages/splash/presentation/widgets/splashbody.dart';

// ignore: camel_case_types
class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KMainColor,
      body: splashbody(),
    );
  }
}