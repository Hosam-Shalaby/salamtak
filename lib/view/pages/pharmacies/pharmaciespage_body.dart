// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:second/view/pages/pharmacies/pharmiciesApi.dart';

// ignore: camel_case_types
class pharmaciespage_body extends StatefulWidget {
  const pharmaciespage_body({super.key});

  @override
  State<pharmaciespage_body> createState() => _pharmaciespage_bodyState();
}

// ignore: camel_case_types
class _pharmaciespage_bodyState extends State<pharmaciespage_body> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: pharmicies());
  }
}