import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/detail.dart';
import 'package:projekuas/list.dart';
import 'package:projekuas/loginpage.dart';
// odels/current_model.dart';
import 'package:projekuas/models/current_model.dart';
import 'package:dio/dio.dart';
import 'package:projekuas/models/data.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // @override
  List<Datum> listcontent = [];
  bool isloading = false;

  final String dataUrl =
      "http://localhost/restful-api/phprestapi.php?function=get_buah";
  Future<List<Datum>> getListContent() async {
    final response = await Dio().get(dataUrl);
    final datamodel =
        ContentModel.fromJson(response.data as Map<String, dynamic>);
    return datamodel.data;
  }

  @override
  void initState() {
    super.initState();
    isloading = true;
    getListContent().then((value) {
      listcontent = value;
      isloading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Daftar Buah')),
        body:

            // GridView.builder(
            //   gridDelegate:
            //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //   itemBuilder: (context, index) {
            //     return list(content: listcontent[index]);
            //   },
            //   itemCount: listcontent.length,
            // ),

            ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            // return ListTile(
            //   leading: Container(
            //     color: Colors.amberAccent,
            //     height: 100,
            //     width: 100,
            //     child: Image(image: NetworkImage()),
            //   ),
            //   title: Text('title'),
            //   subtitle: Text('subtile'),
            //   onTap: () {},
            // );
            return list(content: listcontent[index]);
          },
        ));
  }
  // Future _getData() async{
  //   try{
  //     final response = await http.get('http://localhost/restful-api/phprestapi.php?function=get_buah');

  //   }catch(e){

  //   }
  // }
}
