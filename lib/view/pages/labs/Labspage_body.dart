// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/view/pages/labs/labsApi.dart';

// ignore: camel_case_types
class Labspage_body extends StatefulWidget {
  const Labspage_body({super.key});

  @override
  State<Labspage_body> createState() => _Labspage_bodyState();
}

// ignore: camel_case_types
class _Labspage_bodyState extends State<Labspage_body> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: labs(),);
  }
}