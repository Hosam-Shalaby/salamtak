// ignore_for_file: depend_on_referenced_packages, camel_case_types

import 'package:flutter/material.dart';
import 'package:second/core/custom_button.dart';

class basketTeam extends StatefulWidget {
  const basketTeam({super.key});

  @override
  State<basketTeam> createState() => _basketTeamState();
}

class _basketTeamState extends State<basketTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter'),
        backgroundColor: Colors.orange,
      ),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 120),
                  ),
                  CustomGeneralButton(
                    text: 'Add 1 Point',
                    height: 50,
                    width: 150,
                    fontsize: 20,
                    // onTap: () {},
                  ),
                  CustomGeneralButton(
                    text: 'Add 2 Point',
                    height: 50,
                    width: 150,
                    fontsize: 20,
                    // onTap: () {},
                  ),
                  CustomGeneralButton(
                    text: 'Add 3 Point',
                    height: 50,
                    width: 150,
                    fontsize: 20,
                    // onTap: () {},
                  ),
                ],
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 80,
              ),
              Column(
                children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 120),
                  ),
                  CustomGeneralButton(
                    text: 'Add 1 Point',
                    height: 50,
                    width: 150,
                    fontsize: 20,
                    // onTap: () {},
                  ),
                  CustomGeneralButton(
                    text: 'Add 2 Point',
                    height: 50,
                    width: 150,
                    fontsize: 20,
                    // onTap: () {},
                  ),
                  CustomGeneralButton(
                    text: 'Add 3 Point',
                    height: 50,
                    width: 150,
                    fontsize: 20,
                    // onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          CustomGeneralButton(
            text: 'Add 3 Point',
            height: 50,
            width: 150,
            fontsize: 20,
            // onTap: () {},
          ),
          Spacer()
        ],
      ),
    );
  }
}
