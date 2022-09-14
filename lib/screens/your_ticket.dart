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
          image: AssetImage('asset/images/Loding_Page_1.png'),
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
            height: 480,
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
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Divider(
                    height: 2,
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
