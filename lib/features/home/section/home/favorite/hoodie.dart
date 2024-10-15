part of'../../../home.dart';

class HoodieFavorite extends StatefulWidget {
  const HoodieFavorite({super.key});

  @override
  State<HoodieFavorite> createState() => _HoodieFavoriteState();
}

class _HoodieFavoriteState extends State<HoodieFavorite> {
  @override
  final List<Map<String, dynamic>> favorite = [

    {
      'image': 'assets/images/img-gray-hood.png',
      'name': 'Gray Artistic Hood',
      'price': 33.99,
      'love' : '(346 Loved)',
      'desc' : 'The versatile gray hoodie provides warmth and style, making it perfect for layering during cool evenings or relaxed weekends.',
      'total' : '(346)'
    },
    {
      'image': 'assets/images/img-hood-brown.png',
      'name': 'Brown Artistic Hood',
      'price': 34.99,
      'love' : '(856 Loved)',
      'desc' : 'The soft, warm brown hoodie offers both comfort and style, perfect for cozying up on brisk mornings and cool nights.',
      'total' : '(856)'
    },

  ];

  Widget build(BuildContext context) {
    return Padding(
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
            return ProductItem(
                imageUrl: favorites['image'],
                title: favorites['name'],
                price: favorites['price'],
                desc: favorites['desc'],
                love: favorites['love'],
                total: favorites['total'],
            );
          }
      ),
    );
  }
}




