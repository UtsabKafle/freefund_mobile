import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
                height: 470,
                // decoration: const BoxDecoration(
                //   border: Border(top: BorderSide(color: Colors.black)),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Donations"),
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

            /////////
            ///
            SizedBox(
                height: 470,
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
                height: 470,
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
    );
  }
}

Widget shit() {
  return const cardElement();
}
