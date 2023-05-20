import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inventree/firebase_options.dart';
import 'package:inventree/screens/homepage.dart';
import 'package:inventree/widgets/navbar.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: NavBarScreen(),
    );
  }
}
