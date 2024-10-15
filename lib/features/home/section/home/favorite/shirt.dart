part of'../../../home.dart';

class ShirtFavorite extends StatefulWidget {
  const ShirtFavorite({super.key});

  @override
  State<ShirtFavorite> createState() => _ShirtFavoriteState();
}

class _ShirtFavoriteState extends State<ShirtFavorite> {
  @override
  final List<Map<String, dynamic>> favorite = [

    {
      'image': 'assets/images/img-beige-shirt.png',
      'name': 'Beige Tee',
      'price': 16.99,
      'love' : '(325 Loved)',
      'desc' : 'The lightweight beige shirt adds a touch of elegance and comfort, ideal for both casual outings and formal occasions.',
      'total' : '(325)'
    },

    {
      'image': 'assets/images/img-black-shirt.png',
      'name': 'Black Tee',
      'price': 16.99,
      'love' : '(142 Loved)',
      'desc' : 'The Black Shirt offers timeless style with premium fabric, slim fit, and versatile design, perfect for any occasion',
      'total' : '(142)'
    },
    {
      'image': 'assets/images/img-blue-shirt.png',
      'name': 'Blue Tee',
      'price': 16.99,
      'love' : '(221 Loved)',
      'desc' : 'The Blue Tee combines soft fabric, a relaxed fit, and a classic design, offering comfort and style for everyday wear',
      'total' : '(221)'
    },
    {
      'image': 'assets/images/img-green-shirt.png',
      'name': 'Green Tee',
      'price': 16.99,
      'love' : '(654 Loved)',
      'desc' : 'The Green Tee features a breathable fabric, relaxed fit, and vibrant color, providing comfort and a fresh, casual style.',
      'total' : '(654)'
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

