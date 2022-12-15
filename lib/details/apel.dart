import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class apel extends StatefulWidget {
  const apel({super.key});

  @override
  State<apel> createState() => _apelState();
}

class _apelState extends State<apel> {
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
                    "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Apel',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 50),
                Text(
                  "Apel merupakan jenis buah-buahan, atau buah yang dihasilkan dari pohon apel. Buah apel biasanya berwarna merah kulitnya jika masak dan (siap dimakan), namun bisa juga kulitnya berwarna hijau atau kuning. Kulit buahnya agak lembek dan daging buahnya keras. Buah apel memiliki beberapa biji di dalamnya.",
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => homepage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
    );
  }
}
