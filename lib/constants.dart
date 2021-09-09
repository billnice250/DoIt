import 'package:flutter/material.dart';

const kMainTextColor = kMainAppColor;
const kMainAppColor = Color(0xff0D2646);
const kAccentAppColor = Color(0xffFFC30B);
const KDefaultTextStyle = TextStyle(
    color: kAccentAppColor,
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none);
const kDarkMainTextStyle = TextStyle(
  color: Color(0xff0D2646),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kFormTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kAccentAppColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kAccentAppColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
