// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'constants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static Values data_ = Values();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 82, 180, 215),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Welcome back!",
                  // style: data_.textStyleLegend,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonBar(
                      children: [
                        IconButton(
                          icon: Image.network(
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                            fit: BoxFit.scaleDown,
                          ),
                          iconSize: 60,
                          onPressed: () {},
                          tooltip: "Sign-In with google",
                          // alignment: Alignment.centerLeft,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.facebook_outlined),
                          tooltip: "Sign-In with facebook",
                          iconSize: 60,
                          // alignment: Alignment.centerRight,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextField(
                          decoration:
                              data_.inputField("Email", Icons.email_outlined)),

                      //////////////
                      ///
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: data_.inputField(
                              "passowrd", Icons.password_outlined)
                          // InputDecoration(
                          //     suffixIcon: Icon(Icons.password_outlined),
                          //     hintText: "Password",
                          //     border: OutlineInputBorder()),
                          ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Done"))
                    ],
                  ),
                ),
              ],
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
