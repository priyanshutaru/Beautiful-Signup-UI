// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdWelcome extends StatefulWidget {
  const AdWelcome({super.key});

  @override
  State<AdWelcome> createState() => _AdWelcomeState();
}

class _AdWelcomeState extends State<AdWelcome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: h * 0.3,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/signup.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: h * .18,
                width: w * 1.03,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset("assets/profile1.png"),
                  ),
                  // backgroundImage: AssetImage("assets/profile.png"),
                  radius: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * .1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                    Text(
                      "wedarranger.com",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * .23,
          ),
          Container(
            height: h * 0.08,
            width: w * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage("assets/loginbtn.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
