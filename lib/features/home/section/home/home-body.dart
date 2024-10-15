part of '../../home.dart';

class HomeBody extends StatefulWidget {
  HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  int selectedItem = 0;

  List<String> items = [
    'Hoodie',
    'T-shirt',
    'Crewneck',
    'Sweatpants',
    'Glasses',
  ];

  List<Widget> favoritePage = [
    HoodieFavorite(),
    ShirtFavorite(),
    CrewneckFavorite(),
    SweatpantFavorite(),
    GlassesFavorite(),
  ];

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color:
                                const Color(0xff17171f).withOpacity(35 / 100),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color:
                                const Color(0xff17171f).withOpacity(35 / 100),
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color:
                                const Color(0xff17171f).withOpacity(35 / 100),
                          )),
                      filled: true,
                      fillColor: Colors.transparent,
                      prefixIcon: Icon(
                        Icons.search,
                        color: const Color(0xff17171f).withOpacity(35 / 100),
                      )),
                ),
              ),
              const SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(64),
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/splash-bg.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: const Color(0xff17171f)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Categories(),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Our signature',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color(0xff17171f)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Signature(),
        SizedBox(
          height: 24,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PromoPage(),
                      ));
                });
              },
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: Color(0xff17171f),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 42, left: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: 'Black Fashioned',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                  children: [
                                TextSpan(
                                  text: '\n35%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                                TextSpan(
                                    text: ' off',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 28)),
                                TextSpan(
                                  text: '\nLast for 3 days!!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16),
                                ),
                              ])),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/img-banner-black.png',
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Favorites',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: const Color(0xff17171f)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    if (index == 0) SizedBox(width: 28),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: selectedItem == index
                                ? Color(0xff5F4B40)
                                : Colors.transparent,
                            border: Border.all(
                              width: 0.5,
                              color: selectedItem == index
                                  ? Colors.transparent
                                  : Color(0xff5F4B40).withOpacity(0.35),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Text(
                            items[index],
                            style: GoogleFonts.poppins(
                                color: selectedItem == index
                                    ? Colors.white
                                    : Color(0xff17171f).withOpacity(0.35),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 16,
                );
              },
              itemCount: items.length),
        ),
        SizedBox(
          height: 14,
        ),
        Column(
          children: [favoritePage[selectedItem]],
        ),
      ],
    );
  }
}

class Signature extends StatefulWidget {
  const Signature({super.key});

  @override
  State<Signature> createState() => _SignatureState();
}

class _SignatureState extends State<Signature> {
  @override
  List<String> title = [
    'Brown Artistic Hood',
    'Beige Oversized Tee',
    'Gray Oversized Hood',
    'Navy Crewneck',
  ];

  List<String> img = [
    'assets/images/img-hood-brown.png',
    'assets/images/img-beige-shirt.png',
    'assets/images/img-gray-hood.png',
    'assets/images/img-navy-crewn.png',
  ];

  List<String> category = [
    'Hoodie',
    'T-shirt',
    'Hoodie',
    'Crewneck',
  ];

  List<double> price = [
    34.99,
    19.99,
    29.99,
    27.99,
  ];

  List<String> description = [
    'The soft, warm brown hoodie offers both comfort and style, perfect for cozying up on brisk mornings and cool nights.',
    'The lightweight beige shirt adds a touch of elegance and comfort, ideal for both casual outings and formal occasions.',
    'The versatile gray hoodie provides warmth and style, making it perfect for layering during cool evenings or relaxed weekends.',
    'The classic navy crewneck combines comfort and timeless style, ideal for casual wear or layering in cooler weather.',
  ];

  List<String> love = [
    '(246 loved)',
    '(246 loved)',
    '(246 loved)',
    '(246 loved)',
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
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff17171f),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            category[index],
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff17171f).withOpacity(0.35),
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
