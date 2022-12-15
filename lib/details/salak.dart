import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class salak extends StatefulWidget {
  const salak({super.key});

  @override
  State<salak> createState() => _salakState();
}

class _salakState extends State<salak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 5,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                    "https://cdn.pixabay.com/photo/2016/10/11/15/29/snake-fruit-1731883_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Salak',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5),
                Text(
          "Salak (Salacca zalacca) adalah sejenis palma dengan buah yang biasa dimakan. Ia dikenal juga sebagai sala. Dalam bahasa Inggris disebut salak atau snake fruit, sementara nama ilmiahnya adalah Salacca zalacca. Buah ini disebut snake fruit karena kulitnya mirip dengan sisik ular.",

                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.close), onPressed:() {
            Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => homepage()));
            },
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
    );
  }
}
