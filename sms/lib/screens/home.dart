import 'package:flutter/material.dart';

import 'package:sms/components/home_card.dart';

class home_screen extends StatefulWidget {
  home_screen({Key key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Guest0065"),
              accountEmail: Text("guest@demo.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "G",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Guest",
          style: TextStyle(
              color: Colors.grey[850],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 5),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.8,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        homeCard(
                            "Courses", "assets/images/courses.png", context),
                        homeCard("Info", "assets/images/info.png", context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.8,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        homeCard("Grades", "assets/images/grades.png", context),
                        homeCard(
                            "Attendance", "assets/images/attend.png", context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.8,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        homeCard(
                            "Outline", "assets/images/outline.png", context),
                        homeCard(
                            "Profile", "assets/images/profile.png", context),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
