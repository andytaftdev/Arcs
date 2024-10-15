part of '../home.dart';


class _HeaderSection extends StatelessWidget {
  const _HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hallo, alex',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
              Text('@allexkein',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff504F5E)
                ),)
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(64),
            child: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImg.ProfileImage),
                      fit: BoxFit.cover
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}