part of '../home.dart';





class AllShoesPage extends StatelessWidget {
  const AllShoesPage({super.key});

  final List<Product> product = const [
    Product(
        imageUrl: 'assets/images/allsho.png',
        category: 'Hiking',
        title: 'Terrex Low',
        price: '\$499'
    ),
    Product(
        imageUrl: 'assets/images/allsho.png',
        category: 'Hiking',
        title: 'Terrex Mid',
        price: '\$399'
    ),
    Product(
        imageUrl: 'assets/images/allsho.png',
        category: 'Hiking',
        title: 'Terrex High',
        price: '\$299'
    ),
  ];
  final List<Product> arrival = const [
    Product(
        imageUrl: 'assets/images/hiking.png',
        category: 'Hiking',
        title: 'Terrex Low',
        price: '\$499'
    ),
    Product(
        imageUrl: 'assets/images/hiking.png',
        category: 'Hiking',
        title: 'Terrex Mid',
        price: '\$399'
    ),
    Product(
        imageUrl: 'assets/images/hiking.png',
        category: 'Hiking',
        title: 'Terrex High',
        price: '\$299'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Product',
          style: TextStyle(
            color: AppColor.PrimaryTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: 278,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final products = product[index];
                return Container(
                  width: 215,
                  decoration: BoxDecoration(
                      color: AppColor.PrimaryTextColor, borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Image.asset(products.imageUrl),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products.category,
                              style: const TextStyle(
                                  color: AppColor.GreyText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                             Text(
                              products.title,
                              style: TextStyle(
                                  color: AppColor.BlackText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              products.price,
                              style: TextStyle(
                                  color: AppColor.BlueText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 24,);
              },
              itemCount: product.length),
        ),
        const SizedBox(
          height: 22,
        ),
        const Text(
          'New Arrivals',
          style: TextStyle(
            color: AppColor.PrimaryTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final arrivals = arrival[index];
                return Container(
                  width: 283,
                  decoration: BoxDecoration(
                      color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(arrivals.imageUrl),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                arrivals.category,
                                style: const TextStyle(
                                    color: AppColor.PrimaryTextColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                arrivals.title,
                                style: const TextStyle(
                                    color: AppColor.PrimaryTextColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                arrivals.price,
                                style: const TextStyle(
                                    color: AppColor.BlueText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 24,);
              },
              itemCount: arrival.length),
        )

      ],
    );
  }
}

class BasketballPage extends StatelessWidget {
  const BasketballPage({super.key});

  final List<Product> basketball = const [
    Product(
        imageUrl: 'assets/images/basketball.png',
        category: 'Hiking',
        title: 'Terrex Low',
        price: '\$499'
    ),
    Product(
        imageUrl: 'assets/images/basketball.png',
        category: 'Hiking',
        title: 'Terrex Mid',
        price: '\$399'
    ),
    Product(
        imageUrl: 'assets/images/basketball.png',
        category: 'Hiking',
        title: 'Terrex High',
        price: '\$299'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 22,
        ),
        const Text(
          'For You',
          style: TextStyle(
            color: AppColor.PrimaryTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final baskets = basketball[index];
                return Container(
                  width: 283,
                  decoration: BoxDecoration(
                      color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(baskets.imageUrl),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              baskets.category,
                              style: const TextStyle(
                                  color: AppColor.PrimaryTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              baskets.title,
                              style: const TextStyle(
                                  color: AppColor.PrimaryTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              baskets.price,
                              style: const TextStyle(
                                  color: AppColor.BlueText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 24,);
              },
              itemCount: basketball.length),
        )
      ],
    );
  }
}

class RunningPage extends StatelessWidget {
  const RunningPage({super.key});

  final List<Product> running = const [
    Product(
        imageUrl: 'assets/images/running.png',
        category: 'Hiking',
        title: 'Terrex Low',
        price: '\$499'
    ),
    Product(
        imageUrl: 'assets/images/running.png',
        category: 'Hiking',
        title: 'Terrex Mid',
        price: '\$399'
    ),
    Product(
        imageUrl: 'assets/images/running.png',
        category: 'Hiking',
        title: 'Terrex High',
        price: '\$299'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 22,
        ),
        const Text(
          'For You',
          style: TextStyle(
            color: AppColor.PrimaryTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final runnings = running[index];
                return Container(
                  width: 283,
                  decoration: BoxDecoration(
                      color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(runnings.imageUrl),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              runnings.category,
                              style: const TextStyle(
                                  color: AppColor.PrimaryTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              runnings.title,
                              style: const TextStyle(
                                  color: AppColor.PrimaryTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              runnings.price,
                              style: const TextStyle(
                                  color: AppColor.BlueText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 24,);
              },
              itemCount: running.length),
        )
      ],
    );
  }
}

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  final List<Product> training = const [
    Product(
        imageUrl: 'assets/images/training.png',
        category: 'Hiking',
        title: 'Terrex Low',
        price: '\$499'
    ),
    Product(
        imageUrl: 'assets/images/training.png',
        category: 'Hiking',
        title: 'Terrex Mid',
        price: '\$399'
    ),
    Product(
        imageUrl: 'assets/images/training.png',
        category: 'Hiking',
        title: 'Terrex High',
        price: '\$299'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 22,
        ),
        const Text(
          'For You',
          style: TextStyle(
            color: AppColor.PrimaryTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final trainings = training[index];
                return Container(
                  width: 283,
                  decoration: BoxDecoration(
                      color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(trainings.imageUrl),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              trainings.category,
                              style: const TextStyle(
                                  color: AppColor.PrimaryTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              trainings.title,
                              style: const TextStyle(
                                  color: AppColor.PrimaryTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              trainings.price,
                              style: const TextStyle(
                                  color: AppColor.BlueText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 24,);
              },
              itemCount: training.length),
        )
      ],
    );
  }
}
