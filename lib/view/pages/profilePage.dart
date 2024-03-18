// ignore_for_file: depend_on_referenced_packages, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second/core/custom_button.dart';

import '../../../core/constants.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KMainColor,
        centerTitle: true,
        title: const Text('الصفحة الشخصية'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width / 6,
            height: MediaQuery.of(context).size.height / 4,
            child: const ClipOval(
                child: Image(image: AssetImage('assets/images/Hossam.png'))),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              subtitle: Text(
                'حسام شلبي عبدالرازق شلبي',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              title: Text(
                'اسم المستخدم',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 40,
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              subtitle: Text(
                '01090112676',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              title: Text(
                'رقم الهاتف ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.black,
                size: 40,
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              subtitle: Text(
                'hosamshalby1@gmail.com',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              title: Text(
                ' البريد الالكتروني',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              leading: Icon(
                Icons.email,
                color: Colors.black,
                size: 40,
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              subtitle: Text(
                '*************',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              title: Text(
                'الرقم السري ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              leading: Icon(
                Icons.lock,
                color: Colors.black,
                size: 40,
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          CustomGeneralButton(
            height: 50,
            fontsize: 18,
            width: 10,
            text: 'حذف الحساب',
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: const Text('هل تريد حذف حسابك ؟'),
                      actions: [
                        CustomGeneralButton(
                          height: 50,
                          width: 60,
                          fontsize: 15,
                          text: 'نعم',
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    content: Text('تم الحذف بنجاح'),
                                  );
                                });
                          },
                        ),
                        CustomGeneralButton(
                          height: 50,
                          width: 60,
                          fontsize: 15,
                          text: 'لا',
                          onTap: () {
                            navigator?.pop(context);
                          },
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
