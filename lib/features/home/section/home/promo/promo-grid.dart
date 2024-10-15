part of '../../../home.dart';

class GridPromo extends StatefulWidget {
  final String imageUrl;
  final String title;
  final double price;
  final double discount;
  final String love;
  final String desc;

  const GridPromo({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discount,
    required this.love,
    required this.desc,
  });

  @override
  State<GridPromo> createState() => _GridPromoState();
}

class _GridPromoState extends State<GridPromo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PromoDetail(
              title: widget.title,        // Pass the title
              imageUrl: widget.imageUrl,       // Pass the image
              price: widget.price,        // Pass the price
              desc: widget.desc,        // Pass the price
              love: widget.love,        // Pass the price
              discount: widget.discount,        // Pass the price
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
              decoration: TextDecoration.lineThrough
            ),
          ),
        ],
      ),
    );
  }
}