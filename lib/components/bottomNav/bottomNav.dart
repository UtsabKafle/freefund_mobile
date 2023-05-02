import 'package:flutter/material.dart';

BottomNavigationBar bottomNav(context) {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(
        icon: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: const Icon(Icons.home),
        ),
        label: "Home"),
    BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
            icon: const Icon(Icons.person)),
        label: "account")
  ]);
}
