// ignore_for_file: camel_case_types, avoid_print, file_names

import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class pharmicies extends StatefulWidget {
  const pharmicies({super.key});

  @override
  State<pharmicies> createState() => _pharmiciesState();
}

class _pharmiciesState extends State<pharmicies> {
  Future getGroup() async {
    final res =
        await post(Uri.parse('http://salamtak.today/api/category/get'), body: {
      'apiKey': 'salamtak_api_123',
    });
    if (res.statusCode == 200) {
      print(json.decode(res.body));

      return json.decode(res.body);
      // group=data['group'];
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getGroup(),
        //initialData: ,
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            List data = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              // itemCount: snapshot.data!.length,
              itemBuilder: (itemBuilder, index) {
                return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 500,
                    width: 500,
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'http://salamtak.today/public/${data[4]['Image']}'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            data[4]['CatName'],
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ));
              },
            );
          }
        },
      ),
    );
  }
}
