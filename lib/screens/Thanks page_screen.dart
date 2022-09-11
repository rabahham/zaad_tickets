import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/screens/home_screen.dart';
import 'package:zaad_tickets/shard/components/components.dart';

class Thanks_screen extends StatelessWidget {
  const Thanks_screen({super.key});

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
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: Image.asset(
                      'asset/images/logo_z.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 180,
                    child: Image.asset(
                      'asset/images/OBJECTS.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          'Thank You For',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'your Trust',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        
                        Text(
                          'Happy Trip',
                          style: TextStyle(
                              color: Color.fromARGB(255, 223, 157, 58),
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    )),
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
                      text: 'New Ticket',
                      background: HexColor('#3E8A85')),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
