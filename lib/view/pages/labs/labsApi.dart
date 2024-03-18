// ignore_for_file: camel_case_types, avoid_print, file_names

import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class labs extends StatefulWidget {
  const labs({super.key});

  @override
  State<labs> createState() => _labsState();
}

class _labsState extends State<labs> {
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
                        Image.network('http://salamtak.today/public/${data[2]['Image']}',          fit: BoxFit.cover,
),
                        // Image(
                        //   image: NetworkImage(
                        //       '${data[0]['Image']}'),
                        // ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            data[0]['CatName'],
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
