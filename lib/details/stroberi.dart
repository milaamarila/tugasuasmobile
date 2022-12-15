import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class stroberi extends StatefulWidget {
  const stroberi({super.key});

  @override
  State<stroberi> createState() => _stroberiState();
}

class _stroberiState extends State<stroberi> {
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
                    "https://cdn.pixabay.com/photo/2018/04/29/11/54/strawberries-3359755_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Stroberi',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5),
                Text(
          "Stroberi adalah buah asam dan rasa manis, sangat baik untuk dimasukkan sebagai makanan penutup atau camilan dalam diet penurunan berat badan karena setiap stroberi memiliki sekitar 5 kalori.",
                  
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
