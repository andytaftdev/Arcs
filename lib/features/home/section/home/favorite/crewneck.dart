part of'../../../home.dart';

class CrewneckFavorite extends StatefulWidget {
  const CrewneckFavorite({super.key});

  @override
  State<CrewneckFavorite> createState() => _CrewneckFavoriteState();
}

class _CrewneckFavoriteState extends State<CrewneckFavorite> {
  @override

  final List<Map<String, dynamic>> favorite = [

    {
      'image': 'assets/images/img-navy-crewn.png',
      'name': 'Navy Boxy Crewneck',
      'price': 34.99,
      'love' : '(759 Loved)',
      'desc' : 'The classic navy crewneck combines comfort and timeless style, ideal for casual wear or layering in cooler weather.',
      'total' : '(759)'

    },
    {
      'image': 'assets/images/img-brown-crewn.png',
      'name': 'Brown Boxy Crewneck',
      'price': 39.99,
      'love' : '(274 Loved)',
      'desc' : 'The Brown Crewneck is a cozy essential crafted from soft fabric, featuring a relaxed fit and classic neckline, perfect for layering or solo wear.',
      'total' : '(274)'

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
