
import 'package:flutter/material.dart';

class Dcards extends StatelessWidget {
  const Dcards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 0,
        color: Color.fromARGB(17, 183, 173, 173),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color.fromARGB(255, 94, 83, 82),
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 200,
          height: 100,
          child: Center(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Events',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              Divider(),
              Text('21'),
              Text("View all >>")
            ],
          )),
        ),
      ),
    );
  }
}
