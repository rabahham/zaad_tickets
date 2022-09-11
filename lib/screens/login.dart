import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/screens/home_screen.dart';
import 'package:zaad_tickets/screens/sing_up_screen.dart';
import 'package:zaad_tickets/shard/components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    // passwordVisible
    var passwordVisible = false;

    // editing controller
    final TextEditingController emailController = new TextEditingController();

    final TextEditingController passwordController =
        new TextEditingController();

    // string for displaying the error Message
    String? errorMessage;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/Loding_Page_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      height: 80,
                      child: Image.asset(
                        'asset/images/logo_z.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35.0, right: 50),
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    emailField(
                        controller: passwordController,
                        hintText: 'Username',
                        urlIcon: 'asset/images/Vector.png'),
                    SizedBox(
                      height: 20,
                    ),
                    passWordField(
                        onsubmit: (value) {
                          if (_formKey.currentState!.validate()) {
                            // print(emailController.text);
                            // print(passwordController.text);
                            // ZaadTicktsLoginCubit.get(context).userLogin(
                            //     email: emailController.text,
                            //     password: passwordController.text);
                          }
                        },
                        controller: emailController,
                        hintText: 'Password',
                        urlIcon: 'asset/images/Vector.png'),
                    SizedBox(
                      height: 20,
                    ),
                    defultButton(
                        function: () {
                          // _formKey.currentState!.validate();
                          // signIn(emailController.text, passwordController.text);
                          if (_formKey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                            navigatTo(context, HomeScreens());
                            // ZaadTicktsLoginCubit.get(context).userLogin(
                            //     email: emailController.text,
                            //     password: passwordController.text);
                          }
                        },
                        text: 'Log In',
                        background: HexColor('#3E8A85')),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Forgot your password ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    defultButton(
                        function: () {
                          navigatToRomplace(context, SginUpScreen());
                        },
                        text: 'Sing Un',
                        background: HexColor('#E49E6A')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
