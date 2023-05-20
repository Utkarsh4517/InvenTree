import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';
import 'package:inventree/widgets/custom_button.dart';
import 'package:inventree/widgets/custom_text_input.dart';
import 'package:inventree/widgets/login_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loadingButton = false;

  Map<String, String> data = {};

  _LoginScreenState() {
    data = LoginData.signIn;
  }

  void switchLogin() {
    setState(() {
      if (mapEquals(data, LoginData.signUp)) {
        data = LoginData.signIn;
      } else {
        data = LoginData.signUp;
      }
    });
  }

  void loginButtonPressed(){}

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: spaceCadet, fontSize: 16);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      data["heading"] as String,
                      style: textStyle,
                    ),
                  ),
                  Text(
                    data["subHeading"] as String,
                    style: textStyle,
                  ),
                ],
              ),
            ),
            model(data, _emailController, _passwordController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: switchLogin,
                    child: Text(
                      data["footer"] as String,
                      style: textStyle,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  model(Map<String, String> data, TextEditingController emailController,
      TextEditingController passwordController) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(right: 28, left: 28, top: 30, bottom: 56),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        children: [
          CustomTextInput(icon: Icons.person_outline, label: "Your Email Address", placeholder: "email@address.com", textEditingController: _emailController),
          CustomTextInput(icon: Icons.lock_outline, label: "Password", placeholder: "password", textEditingController: _passwordController, password: true,),
          CustomButton(onPress: loginButtonPressed, text: data["label"] as String, loading: _loadingButton,)
        ],
      ),
    );
  }
}
