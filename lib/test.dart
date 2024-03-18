// // ignore_for_file: depend_on_referenced_packages

// // import 'dart:js_interop';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class test extends StatefulWidget {
//   test({super.key});

//   @override
//   State<test> createState() => _testState();
// }

// class _testState extends State<test> {
//   final String apiKey = 'salamtak_api_123';
//   List category = [];
//   Future getGroup() async {
//     http.Response response = await http
//         .get('http://salamtak.today/api/category/get&apiKey=$apiKey' as Uri);
//     // var response = await http.get( url );
//     var responsebody = response.body;
//     return responsebody;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getGroup(),
//         //initialData: ,
//         builder: (context, AsyncSnapshot snapshot) {
//           if (!snapshot.hasData) {
//             return const Center(child: CircularProgressIndicator());
//           } else {
//             List data = snapshot.data as List;
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (itemBuilder, index) {
//                 return Card(
//                     child: Text(
//                   "${data[index]['CatID']}",
//                   style: const TextStyle(fontSize: 20, color: Colors.red),
//                 ));
//               },
//             );
//           }
//         },
//       ),
//       // body: FutureBuilder(future:getPost()  ,
//       // builder: (context, snapshot))
//       //   // ? const Center(
//       //   //     child: CircularProgressIndicator(),
//       //   //   )
//       //   return ListView.builder(
//       //       itemCount: snapshot.data.length,
//       //       itemBuilder: (context, i) {
//       //         return container(child: Text('${snapshot.data[i]['CatID']}')) ;
//       //       }),
//     );
//   }
// }
