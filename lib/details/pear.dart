import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class pear extends StatefulWidget {
  const pear({super.key});

  @override
  State<pear> createState() => _pearState();
}

class _pearState extends State<pear> {
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
                    "https://cdn.pixabay.com/photo/2016/07/22/09/59/fruits-1534494_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Pear',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5),
                Text(
                  "Pir adalah pohon yang berasal dari daerah beriklim tropis di Eropa Barat, Asia dan Afrika Utara. Pohon berketinggian sedang, bisa mencapai 10-17 meter tapi sebagian spesies merupakan pohon yang pendek yang memiliki daun yang rimbun.",
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
