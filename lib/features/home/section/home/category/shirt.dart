part of'../../../home.dart';

class CategoryShirt extends StatefulWidget {
  const CategoryShirt({super.key});

  @override
  State<CategoryShirt> createState() => _CategoryShirtState();
}

class _CategoryShirtState extends State<CategoryShirt> {
  @override




  final List<Map<String, dynamic>> collection = [

    {
      'image': 'assets/images/img-beige-shirt.png',
      'name': 'Beige Tee',
      'price': 16.99,
      'love' : '(325 Loved)',
      'desc' : 'The lightweight beige shirt adds a touch of elegance and comfort, ideal for both casual outings and formal occasions.',
    },
    {
      'image': 'assets/images/img-white-shirt.png',
      'name': 'White tee',
      'price': 14.99,
      'love' : '(435 Loved)',
      'desc' : 'The White Tee is a wardrobe staple made from soft, breathable fabric, offering a comfortable fit and timeless style for any occasion.',
    },
    {
      'image': 'assets/images/img-blue-shirt.png',
      'name': 'Blue Tee',
      'price': 16.99,
      'love' : '(221 Loved)',
      'desc' : 'The Blue Tee combines soft fabric, a relaxed fit, and a classic design, offering comfort and style for everyday wear',
    },
    {
      'image': 'assets/images/img-black-shirt.png',
      'name': 'Black Tee',
      'price': 16.99,
      'love' : '(142 Loved)',
      'desc' : 'The Black Shirt offers timeless style with premium fabric, slim fit, and versatile design, perfect for any occasion',
    },
    {
      'image': 'assets/images/img-red-shirt.png',
      'name': 'Red tee',
      'price': 14.99,
      'love' : '(212 Loved)',
      'desc' : 'The Red Tee features a vibrant color and soft fabric, providing a comfortable fit and bold style, perfect for making a statement.',
    },
    {
      'image': 'assets/images/img-pink-shirt.png',
      'name': 'Pink tee',
      'price': 14.99,
      'love' : '(321 Loved)',
      'desc' : 'The Pink Tee combines a soft, breathable fabric with a relaxed fit, adding a touch of playful elegance to your casual wardrobe.',
    },
    {
      'image': 'assets/images/img-green-shirt.png',
      'name': 'Green Tee',
      'price': 16.99,
      'love' : '(654 Loved)',
      'desc' : 'The Green Tee features a breathable fabric, relaxed fit, and vibrant color, providing comfort and a fresh, casual style.',
    },



  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios), // Ikon panah
            onPressed: () {
              Navigator.pop(context); // Navigasi kembali
            },
          ),
          title: Text('T-shirt'), // Teks di tengah
          centerTitle: true, // Membuat judul di tengah
        ),
        body: ListView(
          children: [
            Container(
              height: 190,
              color:  Color(0xff03A9F4).withOpacity(0.45),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
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
                                  text: 'Arcs T-shirt',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xff17171f),
                                      fontWeight: FontWeight.w700
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\nHigh Quality T-shirt With ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff17171f).withOpacity(0.60),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    TextSpan(text: '\nComfortable Material',style:
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
                    Image.asset('assets/images/img-banner-shirt.png',),
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
