import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: floralWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: floralWhite,
        title: const Text(
          'Inventree',
          style: TextStyle(color: spaceCadet),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
