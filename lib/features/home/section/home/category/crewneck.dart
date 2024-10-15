part of'../../../home.dart';

class CategoryCrewneck extends StatefulWidget {
  const CategoryCrewneck({super.key});

  @override
  State<CategoryCrewneck> createState() => _CategoryCrewneckState();
}

class _CategoryCrewneckState extends State<CategoryCrewneck> {
  @override




  final List<Map<String, dynamic>> collection = [

    {
      'image': 'assets/images/img-navy-crewn.png',
      'name': 'Navy Boxy Crewneck',
      'price': 34.99,
      'love' : '(759 Loved)',
      'desc' : 'The classic navy crewneck combines comfort and timeless style, ideal for casual wear or layering in cooler weather.',
    },
    {
      'image': 'assets/images/img-pink-crewn.png',
      'name': 'Pink Boxy Crewneck',
      'price': 27.99,
      'love' : '(267 Loved)',
      'desc' : 'The Pink Boxy Crewneck features a trendy boxy fit with soft fabric, offering a relaxed style and vibrant color that’s perfect for layering or casual wear.',
    },
    {
      'image': 'assets/images/img-grey-crewn.png',
      'name': 'Gray Boxy Crewneck',
      'price': 27.99,
      'love' : '(482 Loved)',
      'desc' : 'The Gray Boxy Crewneck combines a modern boxy silhouette with soft, comfortable fabric, offering a versatile piece that pairs well with any outfit for a laid-back look.',
    },
    {
      'image': 'assets/images/img-brown-crewn.png',
      'name': 'Brown Boxy Crewneck',
      'price': 39.99,
      'love' : '(274 Loved)',
      'desc' : 'The Brown Crewneck is a cozy essential crafted from soft fabric, featuring a relaxed fit and classic neckline, perfect for layering or solo wear.',
    },
    {
      'image': 'assets/images/img-blue-crewn.png',
      'name': 'Blue Boxy Crewneck',
      'price': 27.99,
      'love' : '(392 Loved)',
      'desc' : 'The Blue Boxy Crewneck features a stylish boxy fit and soft fabric, providing a relaxed yet trendy look that’s perfect for everyday wear or lounging.',
    },
    {
      'image': 'assets/images/img-green-crewn.png',
      'name': 'Green Boxy Crewneck',
      'price': 27.99,
      'love' : '(164 Loved)',
      'desc' : 'The Green Boxy Crewneck combines a trendy boxy fit with soft, breathable fabric, offering a comfortable and stylish option for casual outings or lounging at home.',
    },


  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Crewneck'),),
        body: ListView(
          children: [
            Container(
              height: 190,
              color:  Color(0xffE5CAF3).withOpacity(0.55),
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
                                  text: 'Arcs Crewneck',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xff17171f),
                                      fontWeight: FontWeight.w700
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\nHigh Quality Crewneck With ',
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
                    Image.asset('assets/images/img-banner-crewn.png',),
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
                  Text('New Collection', style: GoogleFonts.poppins(
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
