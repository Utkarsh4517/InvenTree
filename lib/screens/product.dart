import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';
import 'package:inventree/widgets/custom_button.dart';

class ProductScreen extends StatefulWidget {
  final String url;
  const ProductScreen({
    super.key,
    required this.url,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool addButtonload = false;

  void onAddToCart() async {
    setState(() {
      addButtonload = true;
    });

    /// add to card
    setState(() {
      addButtonload = false;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl: "https://iili.io/Hgh6ni7.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 35,
                      right: 35,
                      child: Container(
                        decoration: const ShapeDecoration(
                            color: jasmine,
                            shape: CircleBorder(),
                            shadows: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 4,
                                offset: Offset(1, 3),
                              ),
                            ]),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: spaceCadet,
                      fontSize: 14,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 22),
                          child: Text("title"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [Text("MRP: "), Text("₹ price")],
                          ),
                        ),
                        CustomButton(
                          onPress: onAddToCart,
                          loading: addButtonload,
                          text: "Add to Cart",
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            "About the items",
                            style: TextStyle(
                              color: spaceCadet,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Items description",
                            style: TextStyle(
                              color: spaceCadet,
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 30,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 4,
                      offset: Offset(1, 3),
                    ),
                  ]),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
