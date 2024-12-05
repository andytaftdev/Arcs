part of '../home/home.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Profile',
                style: GoogleFonts.poppins(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              const HeaderProfile(),
              const SizedBox(
                height: 28,
              ),
              ItemProfile(
                title: 'My Orders',
                subtitle: 'Alraedy have 12 orders',
                url: OrderPage(),
              ),
              ItemProfile(
                title: 'Shipping addresses',
                subtitle: '3 addresses',
                url: OrderPage(),

              ),
              ItemProfile(title: 'Payment methods', subtitle: 'Visa **34', url: OrderPage(),),
              BlocConsumer<LogoutBloc, LogoutState>(
                listener: (context, state) {
                  if (state is LogoutSuccess) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()
                        )
                    );
                  }
                },
                builder: (context, state) {

                  return InkWell(
                    onTap: () {
                      BlocProvider.of<LogoutBloc>(context).add(LogoutButtonPressed());
                    },
                    child: ItemProfile(title: 'Logout', subtitle: '', url: LoginPage(),),
                  );
                },
                  ),


            ],
          ),
        )
      ],
    );
  }
}