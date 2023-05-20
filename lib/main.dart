import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:inventree/firebase_options.dart';
import 'package:inventree/screens/auth_screens/login_screen.dart';
import 'package:inventree/screens/homepage.dart';
import 'package:inventree/widgets/application_state.dart';
import 'package:inventree/widgets/navbar.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
    create: (context) => ApplicationState(),
    builder: (context, _) => Consumer<ApplicationState>(
      builder: (context, applicationState, _) {
        Widget child;
        switch(applicationState.loginState){
          case ApplicationLoginState.loggedOut:
          child = LoginScreen();
          break;

          case ApplicationLoginState.loggedIn:
          child = MyApp();
          break;
          default:
          child= LoginScreen();
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
    ),
  ));

  /// Stripe Setup
  final String response =
      await rootBundle.loadString("assets/config/stripe.json");
  final data = jsonDecode(response);
  Stripe.publishableKey = data["publishableKey"];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NavBarScreen();
  }
}
