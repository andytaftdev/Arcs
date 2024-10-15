part of '../../../home.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  List<String> title = [
    'Brown Artistic Hood',
    'Green Artistic Hood',
    'Blue Oversized Hood'
  ];

  List<String> img = [
    'assets/images/img-gray-hood.png',
    'assets/images/img-green-hood.png',
    'assets/images/img-blue-hood.png'
  ];

  List<double> price = [
    36.99,
    33.99,
    29.99,
  ];

  List<String> description = [
    'The versatile gray hoodie provides warmth and style, making it perfect for layering during cool evenings or relaxed weekends.',
    'The Green Artistic Hood features a unique design with vibrant patterns, crafted from soft fabric for comfort and warmth. Perfect for making a creative statement while staying cozy.',
    'The Blue Oversized Hood features a spacious fit and soft fabric, ensuring comfort and warmth. Its vibrant color adds a trendy flair, making it perfect for casual wear or lounging.',
  ];

  List<String> love = [
    '(346 loved)',
    '(243 loved)',
    '(386 loved)',
  ];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              if (index == 0) SizedBox(width: 28),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetail(
                          title: title[index],        // Pass the title
                          imageUrl: img[index],       // Pass the image
                          price: price[index],        // Pass the price
                          desc: description[index],        // Pass the price
                          love: love[index],        // Pass the price
                        ),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 240,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(img[index]),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        title[index],
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff17171f),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${price[index].toStringAsFixed(2)}',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: img.length,
      ),
    );
  }
}
