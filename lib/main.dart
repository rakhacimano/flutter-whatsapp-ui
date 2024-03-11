import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/whatsapp_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // useMaterial3: false,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const WhatsappPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
