import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/screens/Thanks%20page_screen.dart';
import 'package:zaad_tickets/screens/home_screen.dart';
import 'package:zaad_tickets/shard/components/components.dart';

class SginUpScreen extends StatelessWidget {
  const SginUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    // passwordVisible
    var passwordVisible = false;

    // editing controller
    final TextEditingController emailController = new TextEditingController();
    final TextEditingController userController = new TextEditingController();
    final TextEditingController contryController = new TextEditingController();

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
                      height: 20,
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
                    SizedBox(
                      height: 20,
                    ),
                    textField(
                        controller: userController,
                        hintText: 'Username',
                        urlIcon: 'asset/images/Vector.png'),
                    SizedBox(
                      height: 20,
                    ),
                    emailField(
                        controller: emailController,
                        hintText: 'Email',
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
                        controller: passwordController,
                        hintText: 'Password',
                        urlIcon: 'asset/images/Vector.png'),
                    SizedBox(
                      height: 20,
                    ),
                    textField(
                        controller: contryController,
                        hintText: 'Contry',
                        urlIcon: 'asset/images/Vector.png'),
                    SizedBox(
                      height: 40,
                    ),
                    defultButton(
                        function: () {
                          // _formKey.currentState!.validate();
                          // signIn(emailController.text, passwordController.text);
                          if (_formKey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                            navigatTo(context, Thanks_screen());
                            // ZaadTicktsLoginCubit.get(context).userLogin(
                            //     email: emailController.text,
                            //     password: passwordController.text);
                          }
                        },
                        text: 'Sing Up',
                        background: HexColor('#3E8A85')),
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
