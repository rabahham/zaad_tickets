import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
                fontSize: 28, color: colorText, fontWeight: FontWeight.w500),
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
