part of'../../../home.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override




  final List<Map<String, dynamic>> collection = [

    {
      'image': 'assets/images/img-blue-pants.png',
      'name': 'Light Blue Sweatpants',
      'price': 19.99,
      'love' : '(26 Loved)',
      'desc' : 'The Blue Sweatpants offer a comfortable fit with soft, durable fabric, featuring an elastic waistband and sleek design for relaxed style.',
      'discount': 23.99,
    },
    {
      'image': 'assets/images/img-pink-shirt.png',
      'name': 'Pink tee',
      'price': 14.99,
      'love' : '(321 Loved)',
      'desc' : 'The Pink Tee combines a soft, breathable fabric with a relaxed fit, adding a touch of playful elegance to your casual wardrobe.',
      'discount': 10.99,
    },
    {
      'image': 'assets/images/img-blue-shirt.png',
      'name': 'Blue Tee',
      'price': 16.99,
      'love' : '(221 Loved)',
      'desc' : 'The Blue Tee combines soft fabric, a relaxed fit, and a classic design, offering comfort and style for everyday wear',
      'discount': 13.99,
    },
    {
      'image': 'assets/images/img-glass-1.png',
      'name': 'Light White Glasses',
      'price': 16.99,
      'love' : '(498 Loved)',
      'desc' : 'The Light White Glasses boast a minimalist design with a subtle white frame, providing a stylish and lightweight option that complements any outfit effortlessly.',
      'discount': 14.99,
    },
    {
      'image': 'assets/images/img-green-crewn.png',
      'name': 'Green Boxy Crewneck',
      'price': 27.99,
      'love' : '(164 Loved)',
      'desc' : 'The Green Boxy Crewneck combines a trendy boxy fit with soft, breathable fabric, offering a comfortable and stylish option for casual outings or lounging at home.',
      'discount': 21.99,
    },





  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Black Fashioned'),),
        body: ListView(
          children: [
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Discount', style: GoogleFonts.poppins(
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
                    return GridPromo(
                      imageUrl: collections['image'],
                      title: collections['name'],
                      price: collections['price'],
                      desc: collections['desc'],
                      love: collections['love'],
                      discount: collections['discount'],
                    );
                  }
              ),
            ),

          ],
        )
    );
  }
}
