import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';

class GridCard extends StatelessWidget {
  final int index;
  final void Function() onPress;
  final String url;
  final String text;
  final String price;
  const GridCard({
    required this.url,
    required this.price,
    required this.text,
    super.key,
    required this.index,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 22)
          : const EdgeInsets.only(right: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: GestureDetector(
        onTap: onPress,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:
                        url,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children:  [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: spaceCadet,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: spaceCadet,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
