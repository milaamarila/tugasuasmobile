import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekuas/home.dart';
import 'package:projekuas/pages/home_page.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController pwdcontroller = TextEditingController();

    var emailku = "Mila";
    var pwdku = "aku";

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 212, 204, 167),
      ),
      backgroundColor: Color.fromARGB(255, 212, 204, 167),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To Fresh Fruit",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Log in to your Account",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 74,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: pwdcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Passsword",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Colors.orange,
                    textColor: Colors.white,
                    child: Text("Login"),
                    onPressed: () {
                      if (emailcontroller.text == emailku) {
                        if (pwdcontroller.text == pwdku) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homepage(),
                              ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Passwordmu salah")));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Emailmu salah")));
                      }
                    }),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't heve an account yet? "),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                )
              ],
            )),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
