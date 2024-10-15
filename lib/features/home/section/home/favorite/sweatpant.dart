part of'../../../home.dart';

class SweatpantFavorite extends StatefulWidget {
  const SweatpantFavorite({super.key});

  @override
  State<SweatpantFavorite> createState() => _SweatpantFavoriteState();
}

class _SweatpantFavoriteState extends State<SweatpantFavorite> {
  @override

  final List<Map<String, dynamic>> favorite = [

    {
      'image': 'assets/images/img-blue-pants.png',
      'name': 'Light Blue Sweatpants',
      'price': 19.99,
      'love' : '(26 Loved)',
      'desc' : 'The Blue Sweatpants offer a comfortable fit with soft, durable fabric, featuring an elastic waistband and sleek design for relaxed style.',
      'total' : '(26)'

    },

    {
      'image': 'assets/images/img-beige-pants.png',
      'name': 'Light Beige Sweatpants',
      'price': 23.99,
      'love' : '(119 Loved)',
      'desc' : 'The Beige Sweatpants provide a perfect blend of comfort and style, featuring a soft fabric, relaxed fit, and an adjustable waistband',
      'total' : '(119)'
    },
    {
      'image': 'assets/images/img-black-pants.png',
      'name': 'Onyx Black Sweatpants',
      'price': 24.99,
      'love' : '(68 Loved)',
      'desc' : 'The Black Sweatpants combine casual comfort with a sleek look, featuring soft fabric, an adjustable waistband, and a modern tapered fit.',
      'total' : '(68)'
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
