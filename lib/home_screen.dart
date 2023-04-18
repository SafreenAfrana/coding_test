// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBlue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 1),
            Icon(
              Icons.directions_car,
              color: isBlue ? Colors.amber : Colors.blue,
              size: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Switch(
                  activeColor: Colors.amber,
                  activeTrackColor: Colors.grey,
                  inactiveThumbColor: Colors.blue,
                  inactiveTrackColor: Colors.grey.shade400,
                  splashRadius: 50.0,
                  value: isBlue,
                  onChanged: (value) => setState(() => isBlue = !isBlue),
                ),
                Text(
                  "2",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(flex: 1),
            Material(
              shape: const CircleBorder(side: BorderSide.none),
              elevation: 15,
              child: CircleAvatar(
                backgroundColor: !isBlue ? Colors.grey.shade400 : Colors.red,
                radius: 120.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 110.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        !isBlue ? "60" : "120 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 54,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Km/h",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Current speed",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Spacer(flex: 2),
            Container(height: 60, color: !isBlue ? Colors.blue : Colors.amber),
          ],
        ),
      ),
    );
  }
}
