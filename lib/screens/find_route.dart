import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zaad_tickets/shard/components/components.dart';

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
          body: Container(
            // color: frestColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Center(
                    child: Text(
                      'Select Route',
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  selectGates(),
                  SizedBox(
                    height: 10,
                  ),
                  selectGates(),
                  SizedBox(
                    height: 10,
                  ),
                  selectGates(),
                  SizedBox(
                    height: 10,
                  ),
                  selectGates(),
                  SizedBox(
                    height: 10,
                  ),
                  selectGates(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
