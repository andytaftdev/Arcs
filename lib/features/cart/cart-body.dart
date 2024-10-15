part of '../home/home.dart';


class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  List<String> title = [
    'Brown Artistic Hood',
    'Beige Oversized Tee',
    'Navy Crewneck',
    'Brown Boxy Crewneck',
  ];

  List<String> img = [
    'assets/images/img-hood-brown.png',
    'assets/images/img-beige-shirt.png',
    'assets/images/img-navy-crewn.png',
    'assets/images/img-brown-crewn.png',
  ];

  List<String> category = [
    'Hoodie',
    'T-shirt',
    'Crewneck',
    'Crewneck',
  ];

  List<double> price = [
    34.99,
    19.99,
    27.99,
    24.99,
  ];

  List<int> quantities = [
    1, // initial quantity for item 1
    1, // initial quantity for item 2
    1, // initial quantity for item 3
    1, // initial quantity for item 3
  ];

  List<String> description = [
    'The soft, warm brown hoodie offers both comfort and style, perfect for cozying up on brisk mornings and cool nights.',
    'The lightweight beige shirt adds a touch of elegance and comfort, ideal for both casual outings and formal occasions.',
    'The classic navy crewneck combines comfort and timeless style, ideal for casual wear or layering in cooler weather.',
    'The Brown Crewneck is a cozy essential crafted from soft fabric, featuring a relaxed fit and classic neckline, perfect for layering or solo wear.',

  ];

  List<String> love = [
    '(542 loved)',
    '(432 loved)',
    '(654 loved)',
    '(215 loved)',
  ];

  void _incrementQuantity(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (quantities[index] > 1) {
        quantities[index]--;
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      title.removeAt(index);
      img.removeAt(index);
      category.removeAt(index);
      price.removeAt(index);
      quantities.removeAt(index);
      description.removeAt(index);
      love.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Cart',
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: const Color(0xff17171f),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 420,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            padding: EdgeInsets.zero, // Ensure no padding on the list
            physics: const ClampingScrollPhysics(), // Prevent bouncing effect
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                        title: title[index],
                        imageUrl: img[index],
                        price: price[index],
                        desc: description[index],
                        love: love[index],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xff17171f).withOpacity(0.20),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: DecorationImage(
                              image: AssetImage(img[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: SizedBox(
                            height: 100, // Setting a fixed height
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          title[index],
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff17171f),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => _removeItem(index),
                                          child: const Icon(
                                            Icons.close,
                                            color: Color(0xffb1b1b1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      category[index],
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff17171f)
                                            .withOpacity(0.35),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$${price[index].toStringAsFixed(2)}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff17171f),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () =>
                                              _decrementQuantity(index),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff17171f)
                                                    .withOpacity(0.20),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text('-'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 1),
                                        Container(
                                          width: 25,
                                          height: 25,
                                          child: Center(
                                            child: Text(
                                              quantities[index].toString(),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 1),
                                        GestureDetector(
                                          onTap: () =>
                                              _incrementQuantity(index),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff17171f)
                                                    .withOpacity(0.20),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text('+'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 14,
              );
            },
            itemCount: img.length,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sub Total',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff17171f).withOpacity(0.35),
                                ),
                              ),
                              Text(
                                '\$145',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff17171f),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Fee',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff17171f).withOpacity(0.35),
                                ),
                              ),
                              Text(
                                '\$9',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff17171f),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Application Tax',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff17171f).withOpacity(0.35),
                                ),
                              ),
                              Text(
                                '\$2',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff17171f),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Color(0xff17171f).withOpacity(0.30),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff17171f).withOpacity(0.35),
                                ),
                              ),
                              Text(
                                '\$159',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff17171f),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SuccessPayoutScreen()),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 65,
                          decoration: BoxDecoration(
                              color: Color(0xff5F4B40),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Checkout',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color:  Colors.white,
                                ),
                              ),
                              SizedBox(width: 6,),
                              Icon(Ionicons.arrow_forward, color: Colors.white, size: 25,)

                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        )
      ],
    );
  }
}
