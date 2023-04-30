import 'package:flutter/material.dart';

class cardElement extends StatelessWidget {
  const cardElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      // width: 350,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://mythgyaan.com/wp-content/uploads/2018/01/gita-880x575.jpg',
              fit: BoxFit.fill,
              height: 300,
              width: 300,
            ),
            const Text(
                "this is a sample text for the application. Also this is good"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Donate")),
                OutlinedButton(onPressed: () {}, child: Text("Share"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
