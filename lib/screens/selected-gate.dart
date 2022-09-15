import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/shard/components/components.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

class SelectedGate extends StatelessWidget {
  const SelectedGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/Payment_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            // color: frestColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Center(
                    child: textMots(
                        text: 'Select Gate',
                        size: 34,
                        fontwight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 520,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          Row(
                            children: [
                              classCheck(),
                              classCheck(),
                              SizedBox(
                                width: 40,
                              ),
                              classCheck(),
                              classCheck(),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 55.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                classChecCustum(),
                                classChecCustum(),
                                classChecCustum(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
