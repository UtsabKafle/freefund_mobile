import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/auth/Login.dart';
import 'components/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Free-fund"),
          // backgroundColor: Color.fromARGB(255, 89, 150, 199),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'account');
                  },
                  icon: Icon(Icons.person)),
              label: "account")
        ]),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
                width: 300,
                height: 55,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    autofocus: false,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "search",
                        border: OutlineInputBorder()),
                  ),
                )),

            SizedBox(
                height: 400,
                // decoration: const BoxDecoration(
                //   border: Border(top: BorderSide(color: Colors.black)),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Donations",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 134, 129, 129),
                      thickness: 2,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          cardElement(),
                          cardElement(),
                          cardElement()
                        ],
                      ),
                    )
                  ],
                )),

            /////////
            ///
            SizedBox(
                height: 400,
                // decoration: const BoxDecoration(
                //   border: Border(top: BorderSide(color: Colors.black)),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Events"),
                    Divider(
                      color: Colors.red,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          cardElement(),
                          cardElement(),
                          cardElement()
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
                height: 400,
                // decoration: const BoxDecoration(
                //   border: Border(top: BorderSide(color: Colors.black)),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Events"),
                    Divider(
                      color: Colors.red,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          cardElement(),
                          cardElement(),
                          cardElement()
                        ],
                      ),
                    )
                  ],
                )),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
      routes: {'account': (context) => Login(), 'home': (context) => Home()},
    );
  }
}

Widget shit() {
  return const cardElement();
}
