import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
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
                      Text(
                        ' Let’s Book YourTrip',
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
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
                      Text(
                        ' Algérie Ferries',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DZD',
                              style: TextStyle(
                                  fontSize: 27,
                                  color: selectedIcon,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' Algeria',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: textGrey,
                                  fontWeight: FontWeight.w300),
                            ),
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
                            Text(
                              ' 2H 55Min',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MLS',
                              style: TextStyle(
                                  fontSize: 27,
                                  color: SecndColors,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' Marseille',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: textGrey,
                                  fontWeight: FontWeight.w300),
                            ),
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
                            Text(
                              'SEB',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: selectedIcon),
                            ),
                            Text(
                              '11',
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w500,
                                  color: selectedIcon),
                            ),
                            Text(
                              'SAT',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: selectedIcon),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Departure',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textGrey,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              ' 08:30 AM',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: colorblue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Text(
                              ' Date',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: textGrey,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              ' Tue 26 Aug',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: SecndColors,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arrive',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textGrey,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              ' 10:30 AM',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Text(
                              ' Price',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: textGrey,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              ' 27500 DA',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: selectedIcon,
                                  fontWeight: FontWeight.bold),
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
                      Text(
                        'Passngers',
                        style: TextStyle(
                            fontSize: 18,
                            color: textGrey,
                            fontWeight: FontWeight.w300),
                      ),
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
                            'asset/images/GB.png',
                          ),
                        ),
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
