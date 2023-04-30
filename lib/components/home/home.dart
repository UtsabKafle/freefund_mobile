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
          body: Column(
        children: [
          SizedBox(
              height: 470,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shit(),
                    shit(),
                    shit(),
                    shit(),
                    shit(),
                    shit(),
                    shit(),
                    shit()
                  ],
                ),
              )),
        ],
      )),
    );
  }
}

Widget shit() {
  return const cardElement();
}
