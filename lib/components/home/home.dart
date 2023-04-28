import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
                title: const Text('Hello World'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    tooltip: 'Open shopping cart',
                    onPressed: () {
                      // handle the press
                    },
                  ),
                ],
              ),
            ])));
  }
}
