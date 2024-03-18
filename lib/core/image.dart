// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

// ignore: camel_case_types
class image_all extends StatelessWidget {
  const image_all({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 350,
      width: 350,
      child: Image(
        image: AssetImage('assets'),
        fit: BoxFit.fill,
      ),
    );
  }
}
