import 'package:flutter/material.dart';
import 'package:instagram/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        // '/': (context) => LoadingScreen(),
        
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
      // home: const LoadingScreen(),
    );
  }
}
