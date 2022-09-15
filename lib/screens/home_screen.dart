import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/screens/book_page.dart';
import 'package:zaad_tickets/screens/selected-gate.dart';
import 'package:zaad_tickets/shard/components/components.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController SharshController = new TextEditingController();
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, Constraints) => SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,

        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: Constraints.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              children: [
                // titele and Search
                Container(
                  height: 235,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        color: HexColor('#2A4441'),
                        width: double.infinity,
                        height: 210,
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 45,
                                  ),
                                  textMots(
                                      text: 'Hello Mohammed',
                                      size: 22,
                                      fontwight: FontWeight.normal),
                                  textMots(
                                      text: ' Find Your',
                                      size: 42,
                                      fontwight: FontWeight.bold),
                                  textMots(text: ' Trip', size: 42),
                                ],
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  InkWell(
                                    child: Container(
                                      // child: ImageIcon(AssetImage('asset/images/Vector_w.png')),
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'asset/images/Vector_w.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // bottom: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 50,
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: textFieldSuFixSearch(
                                  controller: SharshController,
                                  hintText: 'Search',
                                  urlIcon: 'asset/images/Vector_z_s.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // CHeck car
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: iconCrecolarText(
                            text: 'Boats',
                            urlImage: 'asset/images/icon_Steamship.png',
                            color: HexColor('#3C8080')),
                      ),
                      Expanded(
                        child: iconCrecolarText(
                            text: 'Flights',
                            urlImage: 'asset/images/icon_fly.png',
                            color: HexColor('##D5D5D5')),
                      ),
                      Expanded(
                        child: iconCrecolarText(
                            text: 'Stays',
                            urlImage: 'asset/images/Group.png',
                            color: HexColor('##D5D5D5')),
                      ),
                      Expanded(
                        child: iconCrecolarText(
                          text: 'Taxis',
                          urlImage: 'asset/images/Vector-car.png',
                          color: HexColor('##D5D5D5'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      textMots(
                          text: 'Most Visited',
                          size: 30,
                          fontwight: FontWeight.w500,
                          color: Colors.black),
                      Spacer(),
                      textMots(
                          text: 'View All',
                          size: 16,
                          fontwight: FontWeight.normal,
                          color: SecndColors),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 30.0),
                    height: 200,
                    child: ListView.separated(
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: ((context, index) => cardsVille()),
                      separatorBuilder: ((context, index) => SizedBox(
                            width: 20,
                          )),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    )),
                Spacer(),
                Column(
                  children: [
                    Container(
                      // height: double.infinity,
                      padding: const EdgeInsets.all(25.0),
                      child: defultButton(
                          function: () {
                            navigatTo(
                              context,
                              Book_Screen(),
                            );
                          },
                          text: 'Let\'s Start',
                          background: SecndColors),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
