// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:perfectsignup/Pages/sign_in.dart';

class AdSignUp extends StatefulWidget {
  const AdSignUp({super.key});

  @override
  State<AdSignUp> createState() => _AdSignUpState();
}

class _AdSignUpState extends State<AdSignUp> {
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
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // Text(
                //   "Hello",
                //   style: TextStyle(
                //       fontSize: 40,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold),
                // ),
                // Text(
                //   "Sign Into Your Account",
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.grey[500],
                //   ),
                // ),
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
                        hintText: "your email id",
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
                // Row(
                //   children: [
                //     Expanded(child: Container()),
                //     Text(
                //       "forget your password??",
                //       style: TextStyle(
                //         fontSize: 20,
                //         color: Colors.grey[500],
                //       ),
                //     ),
                //   ],
                // ),
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
                "Sign up",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // RichText(
          //   text: TextSpan(
          //     text: "Have an account?",
          //     style: TextStyle(
          //       fontSize: 20,
          //       color: Colors.grey[500],
          //     ),
          //   ),
          // ),

          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdSignIn()),
            ),
            child: Container(
              child: Text(
                "Have an account?",
                style: TextStyle(color: Colors.black54, fontSize: 20),
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

          Text(
            "Signup usign the following method",
            style: TextStyle(color: Colors.grey[500]),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/g.png"),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/t.png"),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/f.png"),
                  ),
                ),
              ],
            ),
          )
          // RichText(
          //   text: TextSpan(
          //       text: "Don't have an account??",
          //       style: TextStyle(
          //         fontSize: 20,
          //         color: Colors.grey[500],
          //       ),
          //       // ignore: prefer_const_literals_to_create_immutables
          //       children: [
          //         TextSpan(
          //           text: " Create",
          //           style: TextStyle(
          //             fontSize: 20,
          //             color: Colors.black,
          //           ),
          //         )
          //       ]),
          // ),
        ],
      ),
    );
  }
}
