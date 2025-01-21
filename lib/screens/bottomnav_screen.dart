import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.shopping_cart, color: Colors.blue, size: 30),
            Icon(Icons.search, color: Colors.blue, size: 30),
            Icon(Icons.person, color: Colors.blue, size: 40),
            Icon(Icons.wallet, color: Colors.blue, size: 30),
            Icon(Icons.settings, color: Colors.blue, size: 30),
          ],
        ),
      ),
    );
  }
}
