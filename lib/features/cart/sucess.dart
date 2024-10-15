import 'package:arcs_slicing/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessPayoutScreen extends StatefulWidget {
  @override
  _SuccessPayoutScreenState createState() => _SuccessPayoutScreenState();
}

class _SuccessPayoutScreenState extends State<SuccessPayoutScreen> {
  @override
  void initState() {
    super.initState();
    // Automatically navigate to the "My Orders" page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OrderPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets10.lottiefiles.com/packages/lf20_jbrw3hcz.json',
          repeat: false,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
