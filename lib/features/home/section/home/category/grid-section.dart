part of '../../../home.dart';

class GridProduct extends StatefulWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String love;
  final String desc;

  GridProduct({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.love,
    required this.desc,
  });

  @override
  State<GridProduct> createState() => _GridProductState();
}

class _GridProductState extends State<GridProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(
              title: widget.title,        // Pass the title
              imageUrl: widget.imageUrl,       // Pass the image
              price: widget.price,        // Pass the price
              desc: widget.desc,        // Pass the price
              love: widget.love,        // Pass the price
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.5,
            width: MediaQuery.of(context).size.width * 0.5 - 28,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(widget.imageUrl),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(  // Ensure that the name takes up available space
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,  // Apply ellipsis for overflow
                  maxLines: 1,  // Make sure it's only one line
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            '\$${widget.price.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}