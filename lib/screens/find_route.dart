import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/shard/components/components.dart';

import '../shard/style/colors.dart';

class FindRoute extends StatelessWidget {
  const FindRoute({super.key});

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
          body: SingleChildScrollView(
            child: Container(
              // color: frestColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Center(
                      child: textMots(
                          text: 'Select Route',
                          size: 34,
                          fontwight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    selectGates(colorr: selectedIcon),
                    SizedBox(
                      height: 10,
                    ),
                    selectGates(colorr: HexColor('#168F9A')),
                    SizedBox(
                      height: 10,
                    ),
                    selectGates(colorr: HexColor('#1EAFDA')),
                    SizedBox(
                      height: 10,
                    ),
                    selectGates(colorr: HexColor('#1EAFDA')),
                    SizedBox(
                      height: 10,
                    ),
                    selectGates(colorr: HexColor('#73D039')),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
