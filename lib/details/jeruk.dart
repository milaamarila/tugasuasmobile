import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class jeruk extends StatefulWidget {
  const jeruk({super.key});

  @override
  State<jeruk> createState() => _jerukState();
}

class _jerukState extends State<jeruk> {
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
                    "https://cdn.pixabay.com/photo/2017/12/29/16/34/fruit-3048001_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Jeruk',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5),
                Text(
          "Jeruk adalah buah dari spesies citrus dalam famili Rutaceae, mengacu pada Citrus × sinensis,[1] yang juga disebut jeruk manis, untuk membedakannya dari Citrus × aurantium terkait, yang disebut jeruk pahit. Jeruk manis bereproduksi secara aseksual (apomiksis melalui nucellar embryony), varietas jeruk manis muncul melalui mutasi.",
                  
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
