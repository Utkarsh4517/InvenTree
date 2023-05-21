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

  List<String> urls = [
    'https://iili.io/Hgh6dSs.jpg', // sprite
    'https://iili.io/Hgh63HG.md.jpg', // redbull
    'https://iili.io/Hgh6Jln.jpg', //
    'https://iili.io/Hgh6FRf.md.jpg',
    'https://iili.io/Hgh6KN4.jpg',
    'https://iili.io/Hgh6fDl.jpg', //maggi
    'https://iili.io/Hgh6CVS.jpg', // lux
    'https://iili.io/Hgh6Bx2.md.jpg', // lays
    'https://iili.io/Hgh6xf9.jpg', // kurkure
    'https://iili.io/Hgh6ni7.jpg', // h and s
  ];

  List<String> names = [
    'Sprite',
    'Redbull',
    'Pepsi',
    'Parle G',
    'Oreo',
    'Maggi',
    'lux',
    'Lays',
    'Kurkure',
    'Head and Shoulders'
  ];

    List<String> prices = [
    '₹ 799',
    '₹ 699',
    '₹ 499',
    '₹ 99',
    '₹ 399',
    '₹ 299',
    '₹ 499',
    '₹ 499',
    '₹ 999',
    ''
  ];

  /// On card press function
  onCardPress1() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(url: 'https://iili.io/Hgh6dSs.jpg',),
      ),
    );
  }

    onCardPress2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(url: 'https://iili.io/Hgh63HG.md.jpg',),
      ),
    );
  }

    onCardPress3() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(url: 'https://iili.io/Hgh6Jln.jpg',),
      ),
    );
  }

      onCardPress() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(url: 'https://iili.io/Hgh6Jln.jpg',),
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
                itemCount: names.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GridCard(
                    price: '',
                    text: names[index],
                    url: urls[index],
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
