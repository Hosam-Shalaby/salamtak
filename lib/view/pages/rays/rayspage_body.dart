// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/view/pages/rays/raysApi.dart';

class rayspage_body extends StatefulWidget {
  const rayspage_body({super.key});

  @override
  State<rayspage_body> createState() => _rayspage_bodyState();
}

class _rayspage_bodyState extends State<rayspage_body> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: rays());
  }
}