import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/details/anggur.dart';
import 'package:projekuas/details/apel.dart';
import 'package:projekuas/details/durian.dart';
import 'package:projekuas/details/jambu.dart';
import 'package:projekuas/details/jeruk.dart';
import 'package:projekuas/details/mangga.dart';
import 'package:projekuas/details/pear.dart';
import 'package:projekuas/details/salak.dart';
import 'package:projekuas/details/semangka.dart';
import 'package:projekuas/details/stroberi.dart';

class drawer_content extends StatefulWidget {
  const drawer_content({super.key});

  @override
  State<drawer_content> createState() => _drawer_contentState();
}

class _drawer_contentState extends State<drawer_content> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // DrawerHeader(child: CircleAvatar(backgroundImage: AssetImage(''),

          // )),
          new UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2018/01/04/21/15/young-3061652_960_720.jpg'),
            ),
            accountName: Text("Mila Amarila"),
            accountEmail: Text('nri1828@gmail.com'),
          ),

          ListTile(
            // ""),
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_960_720.jpg"),
            title: const Text('Apel'),
            onTap: () {
              Navigator.pop(context);

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) => apel()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2016/07/22/09/59/fruits-1534494_960_720.jpg"),
            title: const Text('Pear'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => pear()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2018/04/29/11/54/strawberries-3359755_960_720.jpg"),
            title: const Text('Stroberi'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => stroberi()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2016/10/11/15/29/snake-fruit-1731883_960_720.jpg"),
            title: const Text('Salak'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => salak()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2021/02/03/22/20/guava-5979586_960_720.jpg"),
            title: const Text('Jambu Merah'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => jambu()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2017/09/26/15/50/durian-fruit-2789048_960_720.jpg"),
            title: const Text('Durian'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => durian()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2017/02/02/14/04/grapes-2032838_960_720.jpg"),
            title: const Text('Anggur'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => anggur()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2015/06/19/16/48/watermelon-815072_960_720.jpg"),
            title: const Text('Semangka'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => semangka()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2017/12/29/16/34/fruit-3048001_960_720.jpg"),
            title: const Text('Jeruk'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => jeruk()));
            },
          ),
          ListTile(
            leading: Image.network(
                "https://cdn.pixabay.com/photo/2016/03/05/22/18/food-1239241_960_720.jpg"),
            title: const Text('Mangga'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => mangga()));
            },
          ),
        ],
      ),
    );
  }
}
