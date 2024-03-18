// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/view/pages/hospital/hospitalApi.dart';

// ignore: camel_case_types
class hospitalspage_body extends StatefulWidget {
  const hospitalspage_body({super.key});

  @override
  State<hospitalspage_body> createState() => _hospitalspage_bodyState();
}

// ignore: camel_case_types
class _hospitalspage_bodyState extends State<hospitalspage_body> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: hospital(),);
  }
}