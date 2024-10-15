import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:arcs_slicing/example/page/home.dart';
import 'package:arcs_slicing/features/home/home.dart';
import 'package:arcs_slicing/example/example.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:arcs_slicing/icon/icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 2000), () {
      _toHomePage();
    });
  }

  void _toHomePage() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500), // Animation duration
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0); // Start slide from bottom
          const end = Offset.zero; // End slide at normal position
          const curve = Curves.easeInOut; // Easing curve for smooth effect

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash-bg.png'),
                fit: BoxFit.cover)),
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 72),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Arcs',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
