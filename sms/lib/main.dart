import 'package:flutter/material.dart';
import 'package:sms/screens/getStart.dart';

void main() {
  runApp(new MaterialApp(
    home: Directionality(textDirection: TextDirection.ltr, child: getStart()),
  ));
}
