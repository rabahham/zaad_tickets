import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/shard/components/components.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController SharshController = new TextEditingController();
    return Scaffold(
        body: Column(
      children: [
        Stack(
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
                          height: 40,
                        ),
                        Text(
                          'Hello Mohammed',
                          style:
                              TextStyle(fontSize: 22.55, color: Colors.white),
                        ),
                        Text(
                          ' Find Your',
                          style: TextStyle(
                              fontSize: 42,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Trip',
                          style: TextStyle(
                              fontSize: 42,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
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
              bottom: -25,
              child: Center(
                child: Container(
                  width: 410,
                  height: 55,
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: textFieldSuFixSearch(
                      controller: SharshController,
                      hintText: 'Search',
                      urlIcon: 'asset/images/Vector_z_s.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              iconCrecolarText(
                  text: 'Boats',
                  urlImage: 'asset/images/icon_Steamship.png',
                  color: HexColor('#3C8080')),
              SizedBox(
                width: 18,
              ),
              iconCrecolarText(
                  text: 'Flights',
                  urlImage: 'asset/images/icon_fly.png',
                  color: HexColor('##D5D5D5')),
              SizedBox(
                width: 18,
              ),
              iconCrecolarText(
                  text: 'Stays',
                  urlImage: 'asset/images/Group.png',
                  color: HexColor('##D5D5D5')),
              SizedBox(
                width: 18,
              ),
              iconCrecolarText(
                text: 'Taxis',
                urlImage: 'asset/images/Vector-car.png',
                color: HexColor('##D5D5D5'),
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
              Text(
                'Most Visited',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(
                'View All',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: SecndColors),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(children: [
            // ListView.separated(
            //   itemBuilder: cardsVille(),
            //    separatorBuilder: SizedBox(width: 10,),
            //     itemCount: 10),
          ]),
        ),
        Spacer(),
        defultButton(
            function: () {}, text: 'Let\'s Start', background: SecndColors),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
