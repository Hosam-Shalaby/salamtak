// ignore_for_file: camel_case_types, avoid_print, file_names

import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class clinic extends StatefulWidget {
  const clinic({super.key});

  @override
  State<clinic> createState() => _clinicState();
}

class _clinicState extends State<clinic> {
  Future getGroup() async {
    final res =
        await post(Uri.parse('http://salamtak.today/api/category/get'), body: {
      'apiKey': 'salamtak_api_123',
    });
    if (res.statusCode == 200) {
      // print(json.decode(res.body));

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
                              'http://salamtak.today/public/${data[0]['Image']}'),
                        ),
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

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Labs extends StatefulWidget {
//   const Labs({Key? key}) : super(key: key);

//   @override
//   State<Labs> createState() => _LabsState();
// }

// class _LabsState extends State<Labs> {
//   Future<List<dynamic>> getGroup() async {
//     final response = await http.post(Uri.parse('http://salamtak.today/api/category/get'), body: {
//       'apiKey': 'salamtak_api_123',
//     });
//     if (response.statusCode == 200) {
//       final decodedData = json.decode(response.body) as List<dynamic>;
//       return decodedData;
//     } else {
//       throw Exception('Failed to fetch group data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<List<dynamic>>(
//         future: getGroup(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             final List<dynamic> data = snapshot.data!;
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 final item = data[index];
//                 final imageUrl = 'http://salamtak.today/public/img${item['Image']}';
//                 final catName = item['CatName'];

//                 return Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 20),
//                   height: 500,
//                   width: 500,
//                   child: Column(
//                     children: [
//                       Image.network(
//                         imageUrl,
//                         fit: BoxFit.cover,
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           catName,
//                           style: const TextStyle(fontSize: 18, color: Colors.black),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
