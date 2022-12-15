import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class semangka extends StatefulWidget {
  const semangka({super.key});

  @override
  State<semangka> createState() => _semangkaState();
}

class _semangkaState extends State<semangka> {
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
                    "https://cdn.pixabay.com/photo/2015/06/19/16/48/watermelon-815072_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Semangka',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5),
                Text(
          "Semangka (juga dikenal sebagai tembikai atau mendikai(Citrullus lanatus, suku ketimun-ketimunan atau Cucurbitaceae) adalah tanaman merambat yang berasal dari daerah setengah gurun di Afrika bagian selatan.Tanaman ini masih sekerabat dengan labu-labuan (Cucurbitaceae), melon (Cucumis melo) dan ketimun (Cucumis sativus).",
                  
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
