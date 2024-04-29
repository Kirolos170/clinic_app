import 'package:clinic/view/components/sign_in_screen/signin_screen_forgetpassword.dart';
import 'package:clinic/view/pages/pre_signup_screen.dart';
import 'package:clinic/view/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SignIN extends StatelessWidget {

  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  final _formKey = GlobalKey<FormState>();

   SignIN({super.key});

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(
        context ,
        designSize: Size(428, 928)) ;

    // var screenwidtg = MediaQuery.of(context).size.width;



    return Scaffold(
        backgroundColor: Color(0xFF336EA6),
        body: Stack(
          children: [
            Positioned(
              top: 40,
              left: 20,
              child: Text(
                "Let's Start with  \nsign in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(22),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white,
                ),
                width:  ScreenUtil().setWidth(428) ,
                height: ScreenUtil().setHeight(568),
              ),
            ),
            Positioned(
              left: 20,
              top: 170,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                width: ScreenUtil().setWidth(350),
                height: ScreenUtil().setHeight(600),
              ),
            ),
            Positioned(
              left: 30,
              top: 180,
              child: Container(

                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Image.asset("images/Group 13994.png"),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          Text(
                            "Markaz ElAmal",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: ScreenUtil().setSp(16),
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: ScreenUtil().setHeight(60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                  Border.all(width: 2, color: Colors.white),
                                  color: Color(0xFF336EA6)),
                              child: TextFormField(
controller: emailc,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email address';
                                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null; } ,



                                decoration: InputDecoration(
                                  label: Text("Email"),

                                  icon: Icon(Icons.email),
                                ),
                              ),
                            ),
                          ),    //email




                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: ScreenUtil().setHeight(60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                  Border.all(width: 2, color: Colors.white),
                                  color: Color(0xFF336EA6)),
                              child: TextFormField(
                                controller: passwordc,
                                obscureText: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null; // Return null if validation succeeds
                                },



                                decoration: InputDecoration(
                                  label: Text("Password"),

                                  icon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                          ), //password






                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: ScreenUtil().setWidth(400),
                              height: ScreenUtil().setHeight(70),
                              decoration: BoxDecoration(
                                color: Colors.white ,
                                borderRadius: BorderRadius.circular(15),

                              ),
                              child: Center(
                                child: InkWell(




                                  child: Text("Sign in" , style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 24 ,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF336EA6) ,

                                  ),),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()
                           {

                             forgetpassword(context) ;         // function i created

                           },
                            child: Text("Forgot password ?",style: TextStyle(
                              color: Colors.white ,
                              fontSize: ScreenUtil().setSp(16),
                              fontWeight: FontWeight.w600 ,
                              fontFamily: 'Poppins'

                            ),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFF336EA6),
                ),
                width: ScreenUtil().setWidth(320),
                height: ScreenUtil().setHeight(580),                     //last container
              ),
            ),
            Positioned(
              left: 44,
              bottom: 20,
              child: Row(
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil().setSp(10),
                      color: Color(0xFF336EA6),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(15),
                  ),
                  InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PreSignUp())) ;

                    },
                    child: Container(

                      height: ScreenUtil().setHeight(60),
                      width: ScreenUtil().setWidth(400),

                      child: Text("Sign Up",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(15),
                            color: Color(0xFF233B55),
                          )),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
