import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaad_tickets/screens/Payment_screen.dart';

import '../style/colors.dart';

Widget defultButton({
  // required context,
  required String text,
  required VoidCallback function,
  Color background = Colors.white,
  double borderRadius = 40,
  double elevation = 5,
  Color colorText = Colors.white,
  double minWidth = 320,
}) =>
    Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      color: background,
      child: MaterialButton(
          // padding: EdgeInsets.fromLTRB(00, 15, 20, 15),
          // minWidth: MediaQuery.of(context).size.width,
          minWidth: minWidth,
          onPressed: function,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22, color: colorText, fontWeight: FontWeight.w500),
          )),
    );

Widget emailField({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.emailAddress,
  bool autofocus = false,
  double borderRadius = 40,
  int maxlines = 1,
  Color? colorr,
  required String urlIcon,
}) =>
    TextFormField(
        maxLines: maxlines,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your User Name");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },
        // textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hoverColor: Colors.black,
          prefixIcon: ImageIcon(AssetImage(urlIcon)),
          filled: true,
          fillColor: Colors.white,

          contentPadding: EdgeInsets.all(0),
          // contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),

          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 28),
          disabledBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.white)),
        ));

Widget textField({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.emailAddress,
  bool autofocus = false,
  double borderRadius = 40,
  int maxlines = 1,
  Color? colorr,
  required String urlIcon,
}) =>
    TextFormField(
        maxLines: maxlines,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        validator: (value) {
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },

        // textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hoverColor: Colors.black,
          prefixIcon: ImageIcon(
              AssetImage(
                urlIcon,
              ),
              color: colorr),
          filled: true,
          fillColor: Colors.white,

          contentPadding: EdgeInsets.all(0),
          // contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),

          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 28),
          disabledBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.white)),
        ));

Widget textFieldFromTo({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.emailAddress,
  bool autofocus = false,
  double borderRadius = 40,
  int maxlines = 1,
  Color? colorr,
  required String urlIcon,
}) =>
    TextFormField(
        maxLines: maxlines,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: frestColor,
        validator: (value) {
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },

        // textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          // hoverColor: Colors.black,
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                urlIcon,
              ),
              color: colorr,
            ),
          ),
          filled: true,
          fillColor: Colors.white,

          //  contentPadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.only(top: 20, left: 40),

          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
          disabledBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.white)),
        ));

Widget textFieldSuFixIcon({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.text,
  bool autofocus = false,
  double borderRadius = 40,
  int maxlines = 1,
  required String urlIcon,
}) =>
    TextFormField(
        maxLines: maxlines,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        validator: (value) {
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },

        // textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hoverColor: Colors.black,
          suffixIcon: ImageIcon(AssetImage(urlIcon)),
          filled: true,
          fillColor: Colors.white,

          // contentPadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),

          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 28),
          disabledBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.white)),
        ));

Widget textFieldSuFixSearch({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.text,
  bool autofocus = false,
  double borderRadius = 40,
  int maxlines = 1,
  required String urlIcon,
}) =>
    SizedBox(
      height: 50,
      // color: Colors.red,
      child: TextFormField(
          maxLines: maxlines,
          controller: controller,
          keyboardType: keyboardType,
          cursorColor: Colors.black,
          validator: (value) {
            if (value!.isEmpty) {
              return ("$hintText must not be  empty");
            }

            return null;
          },
          onSaved: (value) {
            controller.text = value!;
          },

          // textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            hoverColor: Colors.black,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 5, bottom: 5, top: 5),
              child: iconCercular(
                  urlImage: urlIcon, color: frestColor, height: 50, width: 4),
            ),
            filled: true,
            fillColor: GeryColor,

            // contentPadding: EdgeInsets.all(0),
            contentPadding: EdgeInsets.only(bottom: 30, left: 20),

            hintText: hintText,
            hintStyle:
                TextStyle(color: Colors.black45, fontSize: 28, height: 2.2),
            disabledBorder: InputBorder.none,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: Colors.white)),
          )),
    );

Widget passWordField({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.emailAddress,
  bool autofocus = false,
  double borderRadius = 40,
  int maxlines = 1,
  Color? colorr,
  required String urlIcon,
  Function(String)? onsubmit,
}) =>
    TextFormField(
        obscureText: true,
        maxLines: maxlines,
        onFieldSubmitted: onsubmit,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },

        // textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hoverColor: Colors.black,
          prefixIcon: ImageIcon(AssetImage(urlIcon)),
          filled: true,
          fillColor: Colors.white,

          contentPadding: EdgeInsets.all(0),
          // contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),

          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 28),
          disabledBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.white)),
        ));

void navigatTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));

void navigatToRomplace(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (route) {
      return false;
    });

Widget iconCrecolarText({
  required urlImage,
  Color color = Colors.white,
  required String text,
}) =>
    Column(
      children: [
        Container(
          width: 72,
          height: 70,
          decoration: BoxDecoration(
            // color: HexColor('#3C8080'),
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            urlImage,
            fit: BoxFit.none,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        )
      ],
    );

Widget iconCercular({
  required urlImage,
  Color color = Colors.white,
  double width = 30,
  double height = 30,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        // color: HexColor('#3C8080'),
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        urlImage,
        fit: BoxFit.none,
      ),
    );

Widget cardsVille() => Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('asset/images/marseille.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  'Marseille',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 105,
          ),
          Row(
            children: [
              SizedBox(
                width: 130,
              ),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ImageIcon(
                  AssetImage('asset/images/icon_calender.png'),
                  color: SecndColors,
                ),
              ),
            ],
          )
        ],
      ),
    );

Widget selectGates({
  // Color colorr = selectedIcon,

  String? text,
}) =>
    Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(children: [
        Container(
          child: Image.asset(
            'asset/images/icon_velected.png',
            fit: BoxFit.none,
            // color: colorr,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ALG - MLS',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#6AAAD8')),
            ),
            Text(
              ' Alger Center - Marsille',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#C0C0C0')),
            )
          ],
        )
      ]),
    );

Widget classCheck() => Expanded(
      child: Container(
        height: 42,
        width: 30,
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
          border: Border.all(width: 3.0, color: frestColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'A1',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: selectedIcon),
          ),
        ),
      ),
    );

Widget classChecCustum() => Container(
      height: 42,
      width: 50,
      // margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        border: Border.all(width: 3.0, color: frestColor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          'A1',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: selectedIcon),
        ),
      ),
    );

Widget dropDownCustum({
  required String url,
}) =>
    Expanded(
      child: Container(
        height: 30,
        width: 70,
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: frestColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              url,
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down,
              color: SecndColors,
              // size: 30,
            ),
          ],
        ),
      ),
    );

Widget smallTicktes(contaxt) => InkWell(
      onTap: () => navigatTo(contaxt, PaymentScreen()),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: Container(
          height: 125,

          // padding: EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 4,
              )
            ],
          ),

          padding: EdgeInsets.all(10),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('asset/images/Rectangle.png'),
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
                    height: 2,
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
              SizedBox(
                width: 20,
              ),
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
                    height: 2,
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
      ),
    );
