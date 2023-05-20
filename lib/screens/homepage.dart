import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';
import 'package:inventree/screens/product.dart';
import 'package:inventree/widgets/gridview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final data = ["1", "2", "3", "4"];

  /// On card press function
  onCardPress() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(),
      ),
    );
  }

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
              icon: const Icon(
                Icons.person,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GridCard(
                    index: index,
                    onPress: () {
                      onCardPress();
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
