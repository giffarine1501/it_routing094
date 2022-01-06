import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_routing/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.chakraPetchTextTheme(),
      ),
      home: const FirstPage(),
    );
  }
}