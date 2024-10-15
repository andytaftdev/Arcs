part of'../../../home.dart';

class CategoryGlasses extends StatefulWidget {
  const CategoryGlasses({super.key});

  @override
  State<CategoryGlasses> createState() => _CategoryGlassesState();
}

class _CategoryGlassesState extends State<CategoryGlasses> {
  @override




  final List<Map<String, dynamic>> collection = [

    {
      'image': 'assets/images/img-glass-1.png',
      'name': 'Light White Glasses',
      'price': 16.99,
      'love' : '(498 Loved)',
      'desc' : 'The Light White Glasses boast a minimalist design with a subtle white frame, providing a stylish and lightweight option that complements any outfit effortlessly.',
    },
    {
      'image': 'assets/images/img-glass-2.png',
      'name': 'White Nyc Glasses',
      'price': 16.99,
      'love' : '(332 Loved)',
      'desc' : 'The White NYC Glasses showcase a stylish white frame with a trendy NYC-inspired design, blending urban chic with everyday functionality. Perfect for adding a contemporary touch to any outfit.',
    },
    {
      'image': 'assets/images/img-glass-3.png',
      'name': 'White Inside Glasses',
      'price': 16.99,
      'love' : '(253 Loved)',
      'desc' : 'The White Inside Glasses offer a unique design with clear frames and a subtle white interior, combining modern style with lightweight comfort. Perfect for both everyday wear and special occasions',
    },
    {
      'image': 'assets/images/img-glass-4.png',
      'name': 'Black Nyc Glasses',
      'price': 16.99,
      'love' : '(287 Loved)',
      'desc' : 'The Black NYC Glasses feature a sleek black frame with a trendy design inspired by the urban lifestyle, offering both style and functionality for everyday wear.',
    },

  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Glasses'),),
        body: ListView(
          children: [
            Container(
              height: 190,
              color:  Color(0xffC1E9F4).withOpacity(0.55),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text:  TextSpan(
                                  text: 'Arcs Glasses',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xff17171f),
                                      fontWeight: FontWeight.w700
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\nHigh Quality Glasses With ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff17171f).withOpacity(0.60),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    TextSpan(text: '\nBest Design',style:
                                    TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                      color: Color(0xff17171f).withOpacity(0.60),
                                    )),

                                  ]
                              )
                          ),
                          SizedBox(height: 28.0,),
                          Text('Explore!', style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff17171f)
                          ),),
                          SizedBox(height: 20.0,),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/img-banner-glasses.png',),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Collection', style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color(0xff17171f)
                  ),),
                ],
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 14,
                      childAspectRatio: 0.67
                  ),
                  itemCount: collection.length,
                  itemBuilder: (context , index) {
                    final collections = collection[index];
                    return GridProduct(
                      imageUrl: collections['image'],
                      title: collections['name'],
                      price: collections['price'],
                      desc: collections['desc'],
                      love: collections['love'],
                    );
                  }
              ),
            ),

          ],
        )
    );
  }
}
