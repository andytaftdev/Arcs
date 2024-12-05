import 'package:arcs_slicing/features/auth/blocs.login/login_bloc.dart';
import 'package:arcs_slicing/features/auth/pages/login_page.dart';
import 'package:arcs_slicing/features/bloc/bloc_logout/logout_bloc.dart';
import 'package:arcs_slicing/features/home/home.dart';
import 'package:arcs_slicing/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:arcs_slicing/data/dataresource/auth_local_datasource.dart';
import 'package:arcs_slicing/data/dataresource/auth_remote_datasource.dart';
import 'package:arcs_slicing/data/dataresource/product_remote_datasource.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        // BlocProvider(
        //   create: (context) => ProductBloc(ProductRemoteDataSource())..add(ProductFetch()),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Canteen App',
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
        ),
        home: const AppInitializer(),
      ),
    );
  }
}

class AppInitializer extends StatelessWidget {
  const AppInitializer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: AuthLocalDatasource().ifAuthData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while checking authentication status
          return const SplashPage();
        } else if (snapshot.hasData && snapshot.data == true) {
          // If authenticated, go to DashboardPage
          return const HomePage();
        } else {
          // If not authenticated, go to LoginPage
          return const LoginPage();
        }
      },
    );
  }
}
