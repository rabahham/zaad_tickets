import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/shard/components/components.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

class Book_Screen extends StatelessWidget {
  const Book_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController fromController = new TextEditingController();

    final TextEditingController toController = new TextEditingController();
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
        body: Column(
          children: [
            SizedBox(
              height: 30,
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
            DefaultTabController(
              length: 3,
              child: Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: GeryColor,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: TabBar(
                          indicator: BoxDecoration(
                              color: SecndColors,
                              borderRadius: BorderRadius.circular(25.0)),
                          labelColor: Colors.white,
                          unselectedLabelColor: HexColor('#616161'),
                          tabs: const [
                            Text(
                              'One Way',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Round Trip',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Multi-City',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Stack(
                        // clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              textFieldFromTo(
                                  colorr: selectedIcon,
                                  controller: fromController,
                                  hintText: '  From',
                                  urlIcon: 'asset/images/icon_velected.png'),
                              SizedBox(
                                height: 20,
                              ),
                              textFieldFromTo(
                                  colorr: colorblue,
                                  controller: fromController,
                                  hintText: '  TO',
                                  urlIcon:
                                      'asset/images/ticktes_s_icon-shep.png'),
                            ],
                          ),
                          Positioned(
                            top: 32,
                            right: 40,
                            child: InkWell(
                              child: iconCercular(
                                  width: 55,
                                  height: 55,
                                  urlImage: 'asset/images/changeIcon.png',
                                  color: selectedIcon),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ]),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    ' Sort By ',
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor('#B3B2B4'),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        ' Highest Price',
                        style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#1A1A1A'),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: SecndColors,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListView.builder(
                      itemBuilder: ((context, index) =>
                          smallTicktes(context)))),
            )
          ],
        ),
      ),
    );
  }
}
