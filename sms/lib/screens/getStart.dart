import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class getStart extends StatefulWidget {
  getStart({Key key}) : super(key: key);

  @override
  _getStartState createState() => _getStartState();
}

class _getStartState extends State<getStart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                width: double.infinity,
              ),
              ScaleAnimatedTextKit(
                textStyle: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                totalRepeatCount: 10,
                alignment: AlignmentDirectional.topStart,
                text: ["Hello!", "Welcome!"],
                duration: Duration(milliseconds: 2000),
                pause: Duration(milliseconds: 200),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                height: size.height * 0.2,
                width: size.width * 0.5,
                child: Image.asset(
                  "assets/images/getStart.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Column(
                children: [
                  Hero(
                    tag: 'login',
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/images/login.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 30, bottom: 8),
                    child: Center(
                      child: FadeAnimatedTextKit(
                          totalRepeatCount: 10,
                          duration: Duration(milliseconds: 2200),
                          pause: Duration(milliseconds: 150),
                          textStyle:
                              TextStyle(color: Colors.grey[800], fontSize: 16),
                          text: [
                            "Hey!",
                            "Tap to Get Started!",
                            "Join Our Community!"
                          ]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                      height: 38,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 10),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )),
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Login()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
