import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(left: 0, right: 8, top: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
          const Text(
            'Eldoria',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(Icons.shopping_bag_outlined),
        ],
      ),
    );
  }
}
