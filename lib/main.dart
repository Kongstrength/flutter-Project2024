import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD3xurjeThMGK1Y8QZQUHj4_rDYk7Uif1U",
      appId: "1:60519744609:android:c38f2aae1b673c13511620",
      messagingSenderId: "",
      projectId: "project-ad0f5",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ระบบจองตั๋วหนัง',
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 243, 170, 44),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white, // Set your desired title color here
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeScreen(), // The home screen showing list of movies
    );
  }
}
