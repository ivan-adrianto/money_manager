import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_manager/screens/login/login.dart';
import 'screens/register/register.dart'; // Import it

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Register Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          bodyLarge: const TextStyle(fontWeight: FontWeight.w700), 
        ),
      ),
      home: const LoginScreen(), 
    );
  }
}
