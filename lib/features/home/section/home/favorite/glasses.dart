part of'../../../home.dart';

class GlassesFavorite extends StatefulWidget {
  const GlassesFavorite({super.key});

  @override
  State<GlassesFavorite> createState() => _GlassesFavoriteState();
}

class _GlassesFavoriteState extends State<GlassesFavorite> {
  @override

  final List<Map<String, dynamic>> favorite = [

    {
      'image': 'assets/images/img-glass-3.png',
      'name': 'White Inside Glasses',
      'price': 16.99,
      'love' : '(253 Loved)',
      'desc' : 'The White Inside Glasses offer a unique design with clear frames and a subtle white interior, combining modern style with lightweight comfort. Perfect for both everyday wear and special occasions',
      'total' : '(253)'
    },

    {
      'image': 'assets/images/img-glass-2.png',
      'name': 'White Nyc Glasses',
      'price': 16.99,
      'love' : '(332 Loved)',
      'desc' : 'The White NYC Glasses showcase a stylish white frame with a trendy NYC-inspired design, blending urban chic with everyday functionality. Perfect for adding a contemporary touch to any outfit.',
      'total' : '(332)'
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
