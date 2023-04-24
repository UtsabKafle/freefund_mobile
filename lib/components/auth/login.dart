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
                  style: data_.textStyleLegend,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email_outlined),
                            hintText: "Email",
                            // errorText: "Invalid",
                            border: OutlineInputBorder()),
                      ),

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
                      const TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.password_outlined),
                            hintText: "Password",
                            border: OutlineInputBorder()),
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
