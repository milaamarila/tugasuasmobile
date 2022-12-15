import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
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
                Text(
                  'title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text('date', style: TextStyle(fontStyle: FontStyle.italic),),
                SizedBox(height: 5),
                Text("Halo"),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.close),
      onPressed: () => Navigator.pop(context)),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
    );
  }
}
