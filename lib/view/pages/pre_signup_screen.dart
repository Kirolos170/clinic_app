import 'dart:convert';

import 'package:clinic/view/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class PreSignUp extends StatefulWidget {
  PreSignUp({Key? key}) : super(key: key);

  @override
  _PreSignUpState createState() => _PreSignUpState();
}

class _PreSignUpState extends State<PreSignUp> {
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 990));

    return Scaffold(
      backgroundColor: Color(0xFF336EA6),
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: Text(
              "Let's Start with \nsign up",
              style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              width: ScreenUtil().setWidth(428),
              height: ScreenUtil().setHeight(568),
            ),
          ),
          Positioned(
            left: 20,
            top: 160,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              width: ScreenUtil().setWidth(390),
              height: ScreenUtil().setHeight(800),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: ScreenUtil().setHeight(40)),
                    Image.asset("images/Group 13994.png"),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Text(
                      "Markaz ElAmal",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(16),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Text(
                      "Enter Your Email to send otp",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: emailController,
                        style: TextStyle(fontSize: 12.0),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email address';
                          } else if (!RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.white),
                          icon: Icon(Icons.email, color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(20)),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          sendOTP(emailController.text);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUP())) ;
                        }
                      },
                      child: Container(
                        width: ScreenUtil().setWidth(400),
                        height: ScreenUtil().setWidth(60),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "Send Otp",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF336EA6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> sendOTP(String email) async {                              // otp function

      print("send otp function ") ;
      final apiUrl = 'https://markaz-el-amal.onrender.com/auth/patient/preSignUp?ln=ar';        // end point
      final response =
      await http.post(Uri.parse(apiUrl), body:  json.encode({'email': email}), headers:{

      'Content-Type': 'application/json; charset=UTF-8', } ,         // fixed
      );

      if (response.statusCode == 200) {
        print('OTP sent successfully');
      } else {
        print('Failed to send OTP: ${response.body}');
      }
    }




  }

