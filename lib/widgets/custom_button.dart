import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';
import 'package:inventree/widgets/loader.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPress;
  final bool loading;
  const CustomButton({
    super.key,
    required this.onPress,
    required this.text,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        height: 56,
        width: screenWidth * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: tiffanyBlue,
        ),
        child: MaterialButton(
          onPressed: loading ? null : onPress,
          child: loading ? const Loader() : Text(text),
        ));
  }
}
