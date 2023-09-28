import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData myTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(), // You can use any Google Font here
  // Define other theme properties as needed
);

    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: myTheme,
      home: const home_page(),
    );
  }
}
