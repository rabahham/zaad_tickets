import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/screens/find_route.dart';
import 'package:zaad_tickets/screens/your_ticket.dart';
import 'package:zaad_tickets/shard/components/components.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/Loding_Page_k.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),

                      textMots(
                          text: 'Let’s Book YourTrip',
                          size: 32,
                          fontwight: FontWeight.w500),
                      // Text(
                      //   ' YourTrip',
                      //   style: TextStyle(
                      //       fontSize: 34,
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w500),
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        child: iconCercular(
                            width: 50,
                            height: 50,
                            urlImage: 'asset/images/prson_s_icon.png',
                            color: selectedIcon),
                        onTap: () => navigatTo(context, FindRoute()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('asset/images/Rectangle.png'),
                      textMots(
                          text: ' Algérie Ferries',
                          size: 22,
                          fontwight: FontWeight.bold,
                          color: Colors.black),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child:
                    
                     Row(children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textMots(
                                text: 'DZD',
                                size: 27,
                                fontwight: FontWeight.bold,
                                color: selectedIcon),
                            textMots(
                                text: ' Algeria',
                                size: 20,
                                fontwight: FontWeight.w300,
                                color: textGrey),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                ImageIcon(
                                  AssetImage(
                                    'asset/images/ticktes_s_icon-shep.png',
                                  ),
                                  color: colorblue,
                                ),
                              ],
                            ),
                            textMots(
                                text: ' 2H 55Min',
                                size: 13,
                                fontwight: FontWeight.bold,
                                color: Colors.black),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textMots(
                                text: 'MLS',
                                size: 27,
                                fontwight: FontWeight.bold,
                                color: SecndColors),
                            textMots(
                                text: ' Marseille',
                                size: 20,
                                fontwight: FontWeight.w300,
                                color: textGrey),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        height: 84,
                        width: 55,
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: selectedIcon),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            textMots(
                                text: 'SEB',
                                size: 13,
                                fontwight: FontWeight.w500,
                                color: selectedIcon),
                            textMots(
                                text: '11',
                                size: 27,
                                fontwight: FontWeight.w500,
                                color: selectedIcon),
                            textMots(
                                text: 'SAT',
                                size: 13,
                                fontwight: FontWeight.w500,
                                color: selectedIcon),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textMots(
                                text: 'Departure',
                                size: 18,
                                color: textGrey,
                                fontwight: FontWeight.w300),
                            textMots(
                              text: ' 08:30 AM',
                              size: 19,
                              color: colorblue,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            textMots(
                                text: ' Date',
                                size: 16,
                                color: textGrey,
                                fontwight: FontWeight.w300),
                            textMots(
                              text: ' Tue 26 Aug',
                              size: 18,
                              color: SecndColors,
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textMots(
                                text: 'Arrive',
                                size: 18,
                                color: textGrey,
                                fontwight: FontWeight.w300),
                            textMots(
                              text: ' 10:30 AM',
                              size: 19,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            textMots(
                                text: ' Price',
                                size: 16,
                                color: textGrey,
                                fontwight: FontWeight.w300),
                            textMots(
                              text: ' 27500 DA',
                              size: 19,
                              color: selectedIcon,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      textMots(
                          text: ' Passngers',
                          size: 18,
                          color: textGrey,
                          fontwight: FontWeight.w300),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        dropDownCustum(url: 'asset/images/user.png'),
                        Spacer(),
                        dropDownCustum(url: 'asset/images/Group 2.png'),
                        Spacer(),
                        dropDownCustum(url: 'asset/images/child-head.png'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Stack(children: [
                          Container(
                            height: 45,
                            width: 110,
                            // color: Colors.green,
                            child: Container(
                              height: 38,
                              width: 95,
                              margin: EdgeInsets.all(7),
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: selectedIcon),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Image.asset(
                                'asset/images/GB.png',
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              // margin: EdgeInsets.all(1),
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                color: selectedIcon,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Image.asset(
                                'asset/images/check.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ]),
                        Spacer(),
                        Container(
                          height: 38,
                          width: 95,
                          margin: EdgeInsets.all(7),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: frestColor),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            'asset/images/Dahabiai.png',
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: defultButton(
                text: 'Book Now',
                function: () {
                  navigatTo(context, YourTicket());
                },
                background: SecndColors,
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
