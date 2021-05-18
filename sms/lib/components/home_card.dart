import 'package:flutter/material.dart';

Widget homeCard(String title, String image, BuildContext c) {
  Size size = MediaQuery.of(c).size;
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 8,
        offset: Offset(0, 2),
      ),
    ], color: Colors.grey[200], borderRadius: BorderRadius.circular(14)),
    height: size.height * 0.2,
    width: size.width * 0.32,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
          child: Text(
            title,
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
        )
      ],
    ),
  );
}
