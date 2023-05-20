import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double scale;
  const Loader({
    this.scale = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: const CircularProgressIndicator(
        color: Colors.black,
        semanticsLabel: "Circular progress bar",
      ),
    );
  }
}
