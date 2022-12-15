// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:projekuas/models/current_model.dart';
// import 'package:dio/dio.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   List<Datum> listcontent = [];
//   bool isloading = false;

//   final String dataUrl =
//       "http://localhost/restful-api/phprestapi.php?function=get_buah";
//   Future<List<Datum>> getListContent() async {
//     final response = await Dio().get(dataUrl);
//     final datamodel =
//         ContentModel.fromJson(response.data as Map<String, dynamic>);
//     return datamodel.data;
//   }

//   @override
//   void initState() {
//     super.initState();
//     isloading = true;
//     getListContent().then((value) {
//       listcontent = value;
//       isloading = false;
//       setState(() {});
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Daftar Buah'),
//         centerTitle: true,
//         elevation: 0,
//         actions: [],
//       ),
//       backgroundColor: Colors.yellow[200],
//       body: Column(children: [
//         SizedBox(
//           height: 120,
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 0.8,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10),
//             itemCount: listcontent.length,
//             itemBuilder: (BuildContext ctx, index) {
//               final Datum databuah = listcontent[index];
//               return Card(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15)),
//                 shadowColor: Colors.black,
//                 elevation: 8,
//                 child: Column(children: [
//                   SizedBox(
//                     width: 150,
//                     height: 150,
//                     child: Image(
//                       image: NetworkImage(databuah.imageurl),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4.0),
//                     child: SizedBox(
//                       child: Text(databuah.harga,
//                           style: TextStyle(
//                               color: Colors.blue, fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4.0),
//                     child: SizedBox(
//                       child: Text(databuah.namabuah,
//                           style: TextStyle(
//                               color: Colors.blue, fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SizedBox(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.shopping_cart,
//                             color: Colors.blue,
//                           ),
//                           Text('Beli  '),
//                           Icon(
//                             Icons.indeterminate_check_box,
//                             color: Colors.blue,
//                           ),
//                           Text('0'),
//                           Icon(Icons.add_box, color: Colors.blue),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ]),
//               );
//             },
//           ),
//         )
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/drawer_content.dart';

import '../models/data.dart';
// import 'package:gridview/data.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: Text('Toko Buah'),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        // ],
      ),
      drawer: drawer_content(),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          // childAspectRatio: 0.8,
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 8),
          itemCount: data.length,
          itemBuilder: (BuildContext ctx, index) {
            final DataBuah buah = data[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              shadowColor: Colors.blue,
              elevation: 8,
              child: Column(
                children: [
                  SizedBox(
                      width: 150,
                      height: 150,
                      child: Image(image: NetworkImage(buah.image))
                      // Image.network(
                      //   buah.image,
                      //   fit: BoxFit.cover,
                      // ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: SizedBox(
                      child: Text(buah.harga,
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: SizedBox(
                      child: Text(buah.namabuah),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 4.0),
                  //   child: SizedBox(
                  //     child: Text(buah.deskripsi),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: SizedBox(
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(
                  //           Icons.shopping_cart,
                  //           color: Colors.blue,
                  //         ),
                  //         Text('Beli  '),
                  //         Icon(
                  //           Icons.indeterminate_check_box,
                  //           color: Colors.blue,
                  //         ),
                  //         Text('0'),
                  //         Icon(Icons.add_box, color: Colors.blue),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            );
          }),
    );
  }
}
