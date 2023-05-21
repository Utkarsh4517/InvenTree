import 'package:flutter/material.dart';
import 'package:inventree/widgets/custom_button.dart';
import 'package:inventree/widgets/list_card.dart';

import '../constants/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final carts = ["1", "2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: floralWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 30),
                itemCount: carts.length,
                itemBuilder: (context, index) {
                  return const ListCard();
                },
              ),
              priceFooter(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: CustomButton(onPress: (){}, text: "Checkout"),
              )
            ],
          ),
        ));
  }

  priceFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 2,
            color: Colors.grey,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: const [
                Text(
                  "Total: ",
                  style: TextStyle(
                    color: spaceCadet,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text(
                  "₹ price",
                  style: TextStyle(
                    color: spaceCadet,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
