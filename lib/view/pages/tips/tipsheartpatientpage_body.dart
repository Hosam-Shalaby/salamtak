// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';

class tipsheartpatientpage_body extends StatefulWidget {
  const tipsheartpatientpage_body({super.key});

  @override
  State<tipsheartpatientpage_body> createState() =>
      _tipsheartpatientpage_bodyState();
}

class _tipsheartpatientpage_bodyState extends State<tipsheartpatientpage_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(physics: const BouncingScrollPhysics(), children: const [
        SizedBox(
          height: 300,
          width: 250,
          child: Image(image: AssetImage('assets/images/heart32.png')),
        ),
        Divider(),
        SizedBox(
          height: 400,
          width: 400,
          child: Image(image: AssetImage('assets/images/heart21.png')),
        ),
        Divider(),
        SizedBox(
          height: 350,
          width: 250,
          child: Image(image: AssetImage('assets/images/heart22.png')),
        ),
        Divider(),
        SizedBox(
          height: 400,
          width: 400,
          child: Image(image: AssetImage('assets/images/heart23.png')),
        ),
        SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/heart24.png')),
        ),
        SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/heart25.png')),
        ),
        Divider(),
        SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/heart26.png')),
        ),
        Divider(),
        SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/heart27.png')),
        ),
        SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/heart28.png')),
        ),
        SizedBox(
          height: 350,
          width: 350,
          child: Image(image: AssetImage('assets/images/heart29.png')),
        ),
        SizedBox(
          height: 400,
          width: 400,
          child: Image(image: AssetImage('assets/images/heart30.png')),
        ),
        SizedBox(
          height: 400,
          width: 400,
          child: Image(image: AssetImage('assets/images/heart31.png')),
        ),
      ]),
    );
  }
}
