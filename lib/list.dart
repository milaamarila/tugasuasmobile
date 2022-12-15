import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/models/current_model.dart';

class list extends StatelessWidget {
  const list({super.key, required this.content});
  final Datum content;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromARGB(255, 213, 233, 191),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListTile(
              title: Text("Detail", textAlign: TextAlign.center),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => detail(),
              //       ));
              // },
            ),
          ),
          Image.network(content.imageurl, fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: SizedBox(
              child: Text(content.harga,
                  style: TextStyle(
                      color: Colors.black26, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: SizedBox(
              child: Text(content.namabuah,
                  style: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold)),
            ),
          ),
        ])

        // children: [
        //   ListTile(
        //     title: Text("Detail", textAlign: TextAlign.center),
        //     onTap: () {
        //       // Navigator.push(
        //       //     context,
        //       //     MaterialPageRoute(
        //       //       builder: (context) => detail(),
        //       //     ));
        //     },
        //   ),
        //   Image(image: NetworkImage(content.imageurl)),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(content.namabuah),
        //   ),
        //   Text(content.harga),
        // ],
        );
  }
}

// GridView.builder(
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//       itemBuilder: (context, index) {
//         return Card(
//               color: Color.fromARGB(255, 213, 233, 191),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(9)),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(0.2),
//                     child: ListTile(
//                       title: Text("Detail", textAlign: TextAlign.center),
//                       // onTap: () {
//                       //   Navigator.push(
//                       //       context,
//                       //       MaterialPageRoute(
//                       //         builder: (context) => detail(),
//                       //       ));
//                       // },
//                     ),
//                   ),
//                   Image(
//                     image: NetworkImage(
//                         "https://cdn.pixabay.com/photo/2015/06/19/16/48/watermelon-815072_960_720.jpg"),
//                     fit: BoxFit.cover,
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.only(top: 2.0),
//                     child: SizedBox(
//                       child: Text("databuah.harga",
//                           style: TextStyle(
//                               color: Colors.black26,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 2.0),
//                     child: SizedBox(
//                       child: Text("databuah.namabuah",
//                           style: TextStyle(
//                               color: Colors.black38,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                   ),

//                   // IconButton(
//                   //   onPressed: () {
//                   //     Navigator.push(
//                   //         context,
//                   //         MaterialPageRoute(
//                   //           builder: (context) => loginpage(),
//                   //         ));
//                   //   },
//                   //   icon: Icon(Icons.ad_units),
//                   // )

//                   // GestureDetector(
//                   //   child: ButtonBar(children: [
//                   //     Text("Button1")
//                   //   ]),
//                   //   onTap: () {
//                   //     print('Halooo');
//                   //   },
//                   // )
//                 ],
//               ),
//             );
          
//       },
//     );