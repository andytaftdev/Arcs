part of '../home.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> title = [
    'Hoodie',
    'T-shirt',
    'Crewneck',
    'Sweatpants',
    'Glasses',
  ];

  List<String> img = [
    'assets/images/img-arcs-hood.png',
    'assets/images/img-arcs-shirt.png',
    'assets/images/img-arcs-crewn.png',
    'assets/images/img-arcs-pants.png',
    'assets/images/img-arcs-glass.png',
  ];

  List<Widget> pages = [
    CategoryHoodie(),
    CategoryShirt(),
    CategoryCrewneck(),
    CategorySweatpant(),
    CategoryGlasses(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child:  ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
            return Row(
              children: [
                if (index == 0) SizedBox(width: 28),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pages[index],
                        ));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffEAE3E3).withOpacity(0.20),
                          ),
                          child: Transform.scale(
                            scale: 1.3,
                            child: Image.asset(
                              img[index],
                            ),
                          )
                      ),
                      SizedBox(height: 6,),
                      Text(title[index], style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff17171f),
                      ),)
                    ],
                  )
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 16,);
          },
          itemCount: img.length
      ),
    );
  }
}
