// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pageviewbody extends StatelessWidget {
  const pageviewbody({Key? key, this.title, this.image}) : super(key: key);
  final String? title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 250, child: Image.asset(image!)),
        const Divider(),
        const Divider(),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
