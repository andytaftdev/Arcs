part of '../home.dart';



class _GenreSection extends StatefulWidget {
  const _GenreSection({
    super.key,
  });

  @override
  State<_GenreSection> createState() => _GenreSectionState();
}

int selectedItem = 0;

List<String> items = [
  'All Shoes',
  'Running',
  'Training',
  'Basketball',
  'Hiking',
  'Nigga cuci motor',
];

List<Widget> genrePage = [
  AllShoesPage(),
  BasketballPage(),
  RunningPage(),
  TrainingPage(),
];

class _GenreSectionState extends State<_GenreSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}