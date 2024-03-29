import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'constants.dart';

// import 'package:supabase_flutter/supabase_flutter.dart';

// import 'package:supabase/supabase.dart';
//
class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  static Values data_ = Values();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final supabase = Supabase.instance.client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 82, 180, 215),
          ),
          bottomNavigationBar: bottomNav(context),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    "Log-In to continue",
                    style: data_.textStyleLegend(FontWeight.bold, 24),
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
                  SafeArea(
                    // padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Divider(
                          color: Color.fromARGB(176, 107, 99, 99),
                          height: 8,
                          thickness: 1,
                          // indent: 5,
                          // endIndent: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                            style: data_.textStyleLegend(FontWeight.w400, 20),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        TextField(
                          decoration: data_.inputField(
                            "Email",
                            Icons.email_outlined,
                          ),
                          controller: emailController,
                        ),

                        //////////////
                        ///
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: data_.textStyleLegend(FontWeight.w400, 20),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            controller: passwordController,
                            autocorrect: false,
                            decoration: data_.inputField(
                                "passowrd", Icons.password_outlined)
                            // InputDecoration(
                            //     suffixIcon: Icon(Icons.password_outlined),
                            //     hintText: "Password",
                            //     border: OutlineInputBorder()),
                            ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: const Text("Create account")),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            height: 40,
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () async {
// <<<<<<< HEAD:lib/components/auth/Login.dart
                                // final AuthResponse res =
                                //     await supabase.auth.signInWithPassword(
                                //   email: emailController.text,
                                //   password: passwordController.text,
                                // );
                                // final Session? session = res.session;
                                // final User? user = res.user;

                                // // print(passwordController.text);
                                // // print(emailController.text);
                                // print("session: $session");
                                // if (emailController.text != '' &&
                                //     passwordController.text != '') {
                                //   try {
                                //     final AuthResponse res =
                                //         await supabase.auth.signInWithPassword(
                                //       email: emailController.text,
                                //       password: passwordController.text,
                                //     );
                                //     final Session? session = res.session;
                                //     final User? user = res.user;
                                //     print(session);
                                //     print('----------');
                                //     // print("user-- $user");
                                //   } catch (e) {
                                //     print("exception: $e");
                                //   }
                                // } else {
                                //   //
                                // }

                                // print(passwordController.text);
                                // print(emailController.text);
                                // if (emailController.text != '' &&
                                //     passwordController.text != '') {
                                //   try {
                                //     final AuthResponse res =
                                //         await supabase.auth.signInWithPassword(
                                //       email: emailController.text,
                                //       password: passwordController.text,
                                //     );
                                //     final Session? session = res.session;
                                //     final User? user = res.user;
                                //     print(session);
                                //     print('----------');
                                //     // print("user-- $user");
                                //   } catch (e) {
                                //     print("exception: $e");
                                //   }
                                // } else {
                                //   //
                                // }

                                // print(passwordController.text);
                                // print(emailController.text);
// >>>>>>> 9444663b6356d0a869a14efc77fdbc1111daa107:lib/components/auth/login.dart
                              },
                              style: const ButtonStyle(
                                alignment: Alignment.center,
                              ),
                              child: const Text("Log in"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
