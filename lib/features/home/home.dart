import 'package:arcs_slicing/features/cart/sucess.dart';
import 'package:arcs_slicing/features/profile/section/header_profile_section.dart';
import 'package:arcs_slicing/features/profile/section/item_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../example/page/home.dart';
import '../../preferences/color/color.dart';

part 'section/categories-genre.dart';
part 'section/home/home-body.dart';
part 'section/home/favorite/hoodie.dart';
part 'section/home/favorite/crewneck.dart';
part 'section/home/favorite/glasses.dart';
part 'section/home/favorite/shirt.dart';
part 'section/home/favorite/sweatpant.dart';
part 'section/home/favorite/item-section.dart';
part 'section/home/category/hoodie.dart';
part 'section/home/category/signature.dart';
part 'section/home/category/grid-section.dart';
part 'section/home/category/shirt.dart';
part 'section/home/category/crewneck.dart';
part 'section/home/category/glasses.dart';
part 'section/home/category/sweatpant.dart';
part 'section/home/promo/promo.dart';
part 'section/home/promo/promo-grid.dart';
part 'section/product/product-detail.dart';
part 'section/product/promo-detail.dart';
part '../profile/profile-body.dart';
part '../cart/cart-body.dart';
part '../profile/order/order.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> bodys = [
    HomeBody(),
    CartBody(),
    ProfileBody()
  ];




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: bodys[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
          unselectedFontSize: 0,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xff444242),
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: '-'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: '-'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: '-'
            ),
          ]
      ),
    );
  }
}



