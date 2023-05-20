import 'package:flutter/material.dart';

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
    return Container();
  }
}
