part of'../../../home.dart';

class CategorySweatpant extends StatefulWidget {
  const CategorySweatpant({super.key});

  @override
  State<CategorySweatpant> createState() => _CategorySweatpantState();
}

class _CategorySweatpantState extends State<CategorySweatpant> {
  @override




  final List<Map<String, dynamic>> collection = [

    {
      'image': 'assets/images/img-black-pants.png',
      'name': 'Onyx Black Sweatpants',
      'price': 24.99,
      'love' : '(68 Loved)',
      'desc' : 'The Black Sweatpants combine casual comfort with a sleek look, featuring soft fabric, an adjustable waistband, and a modern tapered fit.',
    },
    {
      'image': 'assets/images/img-yellow-pants.png',
      'name': 'Yellow Sweatpants',
      'price': 28.99,
      'love' : '(243 Loved)',
      'desc' : 'The Yellow Sweatpants offer a bright pop of color with a soft, comfortable fabric, featuring an adjustable waistband and relaxed fit, perfect for lounging or casual outings.',
    },
    {
      'image': 'assets/images/img-grey-pants.png',
      'name': 'Dust Gray Sweatpants',
      'price': 28.99,
      'love' : '(492 Loved)',
      'desc' : 'The Dust Gray Sweatpants combine a neutral tone with soft, breathable fabric, featuring a relaxed fit and adjustable waistband for ultimate comfort and versatility in your casual wardrobe.',
    },
    {
      'image': 'assets/images/img-beige-pants.png',
      'name': 'Light Beige Sweatpants',
      'price': 23.99,
      'love' : '(119 Loved)',
      'desc' : 'The Beige Sweatpants provide a perfect blend of comfort and style, featuring a soft fabric, relaxed fit, and an adjustable waistband',
    },
    {
      'image': 'assets/images/img-blue-pants.png',
      'name': 'Light Blue Sweatpants',
      'price': 19.99,
      'love' : '(26 Loved)',
      'desc' : 'The Blue Sweatpants offer a comfortable fit with soft, durable fabric, featuring an elastic waistband and sleek design for relaxed style.',

    },
    {
      'image': 'assets/images/img-pink-pants.png',
      'name': 'Girly Pink Sweatpants',
      'price': 28.99,
      'love' : '(208 Loved)',
      'desc' : 'The Girly Pink Sweatpants feature a playful shade of pink with a soft, cozy fabric, designed for a comfortable fit and stylish flair, perfect for lounging or casual outings.',
    },




  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sweatpants'),),
        body: ListView(
          children: [
            Container(
              height: 190,
              color:  Color(0xffCDBFBA).withOpacity(0.55),
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
                                  text: 'Arcs Sweatpant',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xff17171f),
                                      fontWeight: FontWeight.w700
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\nHigh Quality Sweatpants With ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff17171f).withOpacity(0.60),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    TextSpan(text: '\nBest Material',style:
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
                    Image.asset('assets/images/img-banner-pants.png',),
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
