import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData icon;
  final TextEditingController textEditingController;
  final bool password;
  const CustomTextInput({
    required this.icon,
    required this.label,
    required this.placeholder,
    required this.textEditingController,
    this.password = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: spaceCadet, fontSize: 16);
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8),
            child: Text(
              label,
              style: textStyle,
            ),
          ),
          SizedBox(
            height: 56,
            child: TextField(
              controller: textEditingController,
              obscureText: password,
              enableSuggestions: !password,
              autocorrect: !password,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 22,
                    end: 20,
                  ),
                  child: Icon(
                    icon,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    borderSide: BorderSide(width: 1, color: Colors.black)),
                filled: true,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: placeholder,
                fillColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
