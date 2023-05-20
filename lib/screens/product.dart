import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

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
                        imageUrl:
                            "https://images.unsplash.com/photo-1621447504864-d8686e12698c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1069&q=80",
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
                            children: [
                              Text("MRP: "), Text("₹ price")
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
