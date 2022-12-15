import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/pages/home_page.dart';

class jambu extends StatefulWidget {
  const jambu({super.key});

  @override
  State<jambu> createState() => _jambuState();
}

class _jambuState extends State<jambu> {
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
                    "https://cdn.pixabay.com/photo/2021/02/03/22/20/guava-5979586_960_720.jpg"),
                SizedBox(height: 10),
                Text(
                  'Jambu Merah',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5),
                Text(
                  "Jambu merah atau bisa juga disebut jambu kepal, jambu dersono, jambu jamaika adalah pohon buah kerabat jambu-jambuan. Buah jambu ini memiliki tekstur daging yang lebih lembut dan lebih padat dibandingkan dengan jambu air.",
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
