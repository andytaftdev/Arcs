import 'package:arcs_slicing/example/example.dart';
import 'package:arcs_slicing/preferences/color/color.dart';
import 'package:arcs_slicing/preferences/image/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:arcs_slicing/example/models/product_model.dart';
part 'section/header_section.dart';
part 'section/genre_section.dart';
part 'section/content.dart';


class HomesPage extends StatefulWidget {
  const HomesPage({super.key});

  @override
  State<HomesPage> createState() => _HomesPageState();
}

class _HomesPageState extends State<HomesPage> {

  int selectedItem = 0;

  List<String> items = [
    'All Shoes',
    'Running',
    'Training',
    'Basketball',
  ];

  List<Widget> genrePage = [
    AllShoesPage(),
    BasketballPage(),
    RunningPage(),
    TrainingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ListView(
        children: [
          const _HeaderSection(),
          SizedBox(height: 24,),
          SizedBox(
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        selectedItem = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedItem == index ? AppColor.PrimaryColor : Colors.transparent,
                          border: Border.all(
                            width: 0.5,
                            color: selectedItem == index ? Colors.transparent : Color(0xff302F37),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        child: Text(items[index],style: GoogleFonts.nunitoSans(
                            color: selectedItem == index ? AppColor.PrimaryTextColor : AppColor.GreyText,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 16,);
                },
                itemCount: items.length
            ),
          ),
          SizedBox(height: 24,),
          genrePage[selectedItem],


      ],
      ),
    );
  }


}




