// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/view/pages/clinic/clinicApi.dart';

class clinicspage_body extends StatefulWidget {
  const clinicspage_body({super.key});

  @override
  State<clinicspage_body> createState() => _clinicspage_bodyState();
}

class _clinicspage_bodyState extends State<clinicspage_body> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: clinic());
  }
}