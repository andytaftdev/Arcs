import 'package:arcs_slicing/example/page/favorite.dart';
import 'package:arcs_slicing/example/page/home.dart';
import 'package:arcs_slicing/example/page/message.dart';
import 'package:arcs_slicing/example/page/profile.dart';
import 'package:arcs_slicing/features/home/home.dart';
import 'package:flutter/material.dart';

import '../preferences/icon/icons.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

int selectedIndex = 0;

class _ExamplePageState extends State<ExamplePage> {
  AnimatedContainer buildBottomButton(IconData icon, int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      child: IconButton(
        onPressed: (){
          setState(() {
            selectedIndex = index;
          });
        },
        icon: Icon(icon, color: selectedIndex == index ? const Color(0xff6c5ecf) : const Color(0xff808191))
      ),
    );
  }

  List<Widget> pages = [
    const HomesPage(),
    const FavoritePage(),
    const MessagePage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2b),
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        elevation: 0,
      onPressed: (){},
        backgroundColor: const Color(0xff38ABBE),
        shape: const CircleBorder(),
        child: const Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          height: 60,
          color: const Color(0xff252836),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBottomButton(CustomIcon.home, 0),
              buildBottomButton(CustomIcon.message, 1),
              const SizedBox(width: 30,),
              buildBottomButton(CustomIcon.favorite, 2),
              buildBottomButton(CustomIcon.profile, 3),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: const Color(0xff252836),
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(CustomIcon.home, color: Colors.grey,), label: 'home'),
      //       BottomNavigationBarItem(icon: Icon(CustomIcon.message, color: Colors.red,), label: 'message'),
      //       BottomNavigationBarItem(icon: Icon(CustomIcon.favorite, color: Colors.grey,), label: 'favorite'),
      //       BottomNavigationBarItem(icon: Icon(CustomIcon.profile, color: Colors.grey,), label: 'profile'),
      //     ],
      //   ),
      // ),
    );
  }
}
