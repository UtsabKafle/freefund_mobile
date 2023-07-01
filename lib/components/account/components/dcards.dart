/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
import 'dart:io';

import 'package:flutter/material.dart';

class Dcards extends StatelessWidget {
  const Dcards({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Color.fromARGB(17, 183, 173, 173),
        shape: const RoundedRectangleBorder(
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
            children: const [
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
