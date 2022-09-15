import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zaad_tickets/screens/thanks%20page_screen.dart';
import 'package:zaad_tickets/shard/components/components.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

class YourTicket extends StatelessWidget {
  const YourTicket({super.key});

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
        body: Column(children: [
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
            // height: 486,
            padding: EdgeInsets.all(20),
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
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 35,
                            child: Image.asset('asset/images/Rectangle.png')),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          ' Algérie Ferries',
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                            height: 35,
                            child: Image.asset('asset/images/Z_green.png')),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          ' ZaadTickets',
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(children: [
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(7),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: SecndColors),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/time.png',
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                ' 10:30 AM',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: SecndColors,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(7),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: selectedIcon),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/date.png',
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                ' 23/09/2022',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: selectedIcon,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textMots(
                              text: 'Gate',
                              size: 18,
                              color: textGrey,
                              fontwight: FontWeight.w300),
                          textMots(
                            text: ' C1',
                            size: 19,
                            color: colorblue,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          textMots(
                              text: ' Trip No',
                              size: 18,
                              color: textGrey,
                              fontwight: FontWeight.w300),
                          textMots(
                            text: ' ZCVD',
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
                              text: 'Seat',
                              size: 18,
                              color: textGrey,
                              fontwight: FontWeight.w300),
                          textMots(
                            text: ' A1',
                            size: 19,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          textMots(
                              text: ' Class',
                              size: 18,
                              color: textGrey,
                              fontwight: FontWeight.w300),
                          textMots(
                            text: ' Business',
                            size: 19,
                            color: selectedIcon,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Divider(
                    height: 3,
                    color: Color.fromARGB(255, 88, 88, 88),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'barccodebarcodeb',
                        style: TextStyle(
                          fontFamily: 'Barcode',
                        ),
                      ),
                    ),
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
                navigatTo(context, Thanks_screen());
              },
              background: SecndColors,
            ),
          ),
          SizedBox(
            height: 15,
          )
        ]),
      ),
    );
  }
}
