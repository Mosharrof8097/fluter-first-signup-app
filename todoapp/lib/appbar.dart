import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mango",
            style: TextStyle(
              color: const Color.fromARGB(255, 15, 80, 1),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Shop",
            style: TextStyle(
              color: const Color.fromARGB(255, 201, 71, 19),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
    leading: Icon(Icons.menu),

    actions: [Icon(Icons.notifications, size: 40, color: Colors.black)],
  );
}
