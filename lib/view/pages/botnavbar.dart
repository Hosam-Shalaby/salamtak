// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/view/pages/HomePage_body.dart';
import 'package:second/view/pages/offerspage.dart';
import 'package:second/view/pages/ordarspage.dart';
import 'package:second/view/pages/profilePage.dart';
import 'package:second/view/pages/settingpage.dart';

import '../../../core/constants.dart';

class botnavbar extends StatefulWidget {
  const botnavbar({super.key});

  @override
  State<botnavbar> createState() => _botnavbarState();
}

class _botnavbarState extends State<botnavbar> {
  int selectedindex = 2;
  List screens = [
    const settingspage(),
    const ordarspage(),
    const HomePage_body(),
    const offerspage(),
    const profilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[selectedindex],
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: KMainColor,
              unselectedItemColor: Colors.blueGrey,
              currentIndex: selectedindex,
              iconSize: 20,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.bold),
              onTap: (index) {
                setState(() {
                  selectedindex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    label: 'الاعدادات', icon: Icon(Icons.settings)),
                BottomNavigationBarItem(
                    label: 'الحجوزات', icon: Icon(Icons.schedule)),
                BottomNavigationBarItem(
                    label: 'الرئيسية', icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: ' العروض', icon: Icon(Icons.local_offer)),
                BottomNavigationBarItem(
                    label: 'الصفحة الشخصية', icon: Icon(Icons.person))
              ]),
        ));
  }
}
