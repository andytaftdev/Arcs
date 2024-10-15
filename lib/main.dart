import 'package:flutter/material.dart';
import 'package:arcs_slicing/splash.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {

  WidgetsFlutterBinding.ensureInitialized();
  // Set System UI Overlay style (status bar dan navigation bar)
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // Status bar menjadi putih
    statusBarIconBrightness: Brightness.dark, // Ikon status bar berwarna gelap (ikon gelap terlihat pada latar belakang putih)
    systemNavigationBarColor: Colors.white, // Navigation bar menjadi putih
    systemNavigationBarIconBrightness: Brightness.dark, // Ikon navigation bar berwarna gelap
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true, fontFamily: GoogleFonts.poppins().fontFamily),
      home: const SplashPage(),
    );
  }
}

