import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'package:freefund_mobile/components/home/components/titleDivider.dart';
import 'components/card.dart';
import 'components/searchbar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Home extends StatefulWidget {
  // final supabase = Supabase.instance.client;

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
        bottomNavigationBar: bottomNav(context),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            searchBar(),

            SizedBox(
                height: 400,
                // decoration: const BoxDecoration(
                //   border: Border(top: BorderSide(color: Colors.black)),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    titleDivider(context, "Donations", "donation"),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardElement(context),
                          cardElement(context),
                          cardElement(context)
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
                    titleDivider(context, "Events", "event"),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardElement(context),
                          cardElement(context),
                          cardElement(context)
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
                    titleDivider(context, "Meetings", "events"),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          cardElement(context),
                          cardElement(context),
                          cardElement(context)
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
