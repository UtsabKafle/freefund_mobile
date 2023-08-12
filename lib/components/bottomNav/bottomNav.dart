import 'package:flutter/material.dart';

BottomNavigationBar bottomNav(context) {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(
        backgroundColor: const Color.fromARGB(255, 40, 43, 53),
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
              Navigator.pushNamed(context, '/raise');
            },
            icon: const Icon(Icons.control_point_duplicate_outlined)),
        label: "Raise"),
    BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.manage_accounts)),
        label: "account"),
    BottomNavigationBarItem(
        icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            icon: const Icon(Icons.login)),
        label: "login"),
  ]);
}
