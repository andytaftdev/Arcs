part of'../../../home.dart';

class CategoryHoodie extends StatefulWidget {
  const CategoryHoodie({super.key});

  @override
  State<CategoryHoodie> createState() => _CategoryHoodieState();
}

class _CategoryHoodieState extends State<CategoryHoodie> {
  @override




  final List<Map<String, dynamic>> favorite = [

    {
      'image': 'assets/images/img-gray-hood.png',
      'name': 'Gray Artistic Hood',
      'price': 33.99,
      'love' : '(346 Loved)',
      'desc' : 'The versatile gray hoodie provides warmth and style, making it perfect for layering during cool evenings or relaxed weekends.',
    },

    {
      'image': 'assets/images/img-blue-hood.png',
      'name': 'Blue Oversized Hood',
      'price': 29.99,
      'love' : '(386 Loved)',
      'desc' : 'The Blue Oversized Hood features a spacious fit and soft fabric, ensuring comfort and warmth. Its vibrant color adds a trendy flair, making it perfect for casual wear or lounging.',
    },
    {
      'image': 'assets/images/img-white-hood.png',
      'name': 'White Oversized Hood',
      'price': 26.99,
      'love' : '(412 Loved)',
      'desc' : 'The White Oversized Hood offers a relaxed fit and cozy design, crafted from soft fabric for ultimate comfort. Perfect for layering or casual outings, it adds a stylish touch to any outfit.',
    },
    {
      'image': 'assets/images/img-green-hood.png',
      'name': 'Green Artistic Hood',
      'price': 33.99,
      'love' : '(432 Loved)',
      'desc' : 'The Green Artistic Hood features a unique design with vibrant patterns, crafted from soft fabric for comfort and warmth. Perfect for making a creative statement while staying cozy.',
    },
    {
      'image': 'assets/images/img-hood-brown.png',
      'name': 'Brown Artistic Hood',
      'price': 34.99,
      'love' : '(346 Loved)',
      'desc' : 'The soft, warm brown hoodie offers both comfort and style, perfect for cozying up on brisk mornings and cool nights.',
    },


  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), // Ikon panah
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali
          },
        ),
        title: Text('Hoodie'), // Teks di tengah
        centerTitle: true, // Membuat judul di tengah
      ),
      body: ListView(
        children: [
          Container(
            height: 190,
            color:  Color(0xffDBB596).withOpacity(0.45),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:42, left: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text:  TextSpan(
                              text: 'Arcs Hoodie',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color(0xff17171f),
                                fontWeight: FontWeight.w700
                              ),
                              children: [
                                TextSpan(
                                  text: '\nHigh Quality Hoodie With Great ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff17171f).withOpacity(0.60),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(text: '\nColor And Style',style:
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
                Image.asset('assets/images/img-banner-hoodie.png',),
              ],
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
          SizedBox(height: 16,),
          Collection(),
          SizedBox(height: 18,),
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
          SizedBox(height: 16,),
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
                itemCount: favorite.length,
                itemBuilder: (context , index) {
                  final favorites = favorite[index];
                  return GridProduct(
                    imageUrl: favorites['image'],
                    title: favorites['name'],
                    price: favorites['price'],
                    desc: favorites['desc'],
                    love: favorites['love'],
                  );
                }
            ),
          ),

        ],
      )
    );
  }
}
