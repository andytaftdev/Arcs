import 'dart:convert';

import 'package:arcs_slicing/data/dataresource/auth_local_datasource.dart';
import 'package:arcs_slicing/features/auth/blocs.login/login_bloc.dart';
import 'package:arcs_slicing/features/auth/button.dart';
import 'package:arcs_slicing/features/auth/custom-field.dart';
import 'package:arcs_slicing/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../home/pages/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 80.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130.0),
            child: Image.asset(
              'assets/images/splash-bg.png',
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 24.0),
          const Center(
            child: Text(
              "Arcs Slicing",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 3.0),
          const Center(
            child: Text(
              'Healthy Meals for Happy Minds!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          CustomTextField(
            controller: usernameController,
            hintText: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
          const SizedBox(height: 22.0),
          CustomTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
            prefixIcon: Icon(Icons.lock),
          ),
          const SizedBox(height: 24.0),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess){
                AuthLocalDatasource().saveAuthData(state.authResponseModel);
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                      builder: (context) => const HomePage()
                  )
                );
              }
              if (state is LoginFailure){
                final erorMessage = jsonDecode(state.message) ['message'];
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(erorMessage))
                );
              }
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                if (state is LoginLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Button.filled(
                  onPressed: () {
                    context.read<LoginBloc>().add(
                        LoginButtonPressed(email: usernameController.text,
                            password: passwordController.text)
                    );
                  },
                  label: 'Login',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
