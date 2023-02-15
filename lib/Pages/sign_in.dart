// ignore_for_file: unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:perfectsignup/Pages/sign_up.dart';

class AdSignIn extends StatefulWidget {
  const AdSignIn({super.key});

  @override
  State<AdSignIn> createState() => _AdSignInState();
}

class _AdSignInState extends State<AdSignIn> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: h * 0.3,
            width: w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/loginimg.png"), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign Into Your Account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "enter your email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.deepOrangeAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "enter your password",
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Colors.deepOrangeAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      "forget your password??",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.06,
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
                "Sign in",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Center(
          //   child: Row(
          //     // ignore: prefer_const_literals_to_create_immutables
          //     children: [
          //       Text("Don't have an account?"),
          //       Text(
          //         "Creat",
          //         style: TextStyle(
          //             color: Colors.black, fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: w * .12,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdSignUp()),
            ),
            child: RichText(
              text: TextSpan(
                  text: "Don't have an account??",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(
                      text: " Create",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
