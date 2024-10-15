part of '../../home.dart';

class ProductDetail extends StatefulWidget {

  final String title;
  final String imageUrl;
  final double price;
  final String love;
  final String desc;

  ProductDetail({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.love,
    required this.desc
  });


  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override

  int selectedItem = 0;

   List<String> items = [
    'S',
    'M',
    'L',
    'XL',
    'XXL'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover
              )
            ),
            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: IconButton(
                        icon: Icon(Ionicons.arrow_back, color: Color(0xff17171f), size: 24,), // Ikon panah
                        onPressed: () {
                          Navigator.pop(context); // Navigasi kembali
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 28),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(FeatherIcons.heart, color: Color(0xff17171f), size: 24,)
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
          SizedBox(height: 18,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(widget.title, style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Ionicons.heart,
                  color: Color(0xffED7270),
                  size: 18,
                ),
                SizedBox(width: 10,),
                Text(
                  widget.love,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.desc,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Select Size :',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff17171f),
              ),
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(
            height: 50,
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
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffb1b1b1).withOpacity(0.10),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                        '\$${widget.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff17171f),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff5F4B40),

                      ),
                      height: 45,
                      child: Center(
                        child: Padding(
                            padding: EdgeInsets.symmetric( horizontal: 20),
                          child: Text('Add To Cart' ,style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              )
            )
          ),





        ],
      )
    );
  }
}
