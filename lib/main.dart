import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          backgroundColor: const Color(0xFF12153B),
          scaffoldBackgroundColor: const Color(0xFF12153B),

          accentColor: Colors.red
      ),
      home:  const Scaffold(
        body: InputApp(),
      ),
    );
  }
}



