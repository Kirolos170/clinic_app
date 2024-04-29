import 'package:clinic/view/pages/Welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../viewmodel/sign_up_bloc/sign_up_bloc_cubit.dart';
import '../components/sign_in_screen/signin_screen_otp.dart';




class SignUP extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUP> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        context ,
        designSize: Size(428, 990)) ;

    return BlocProvider(
  create: (context) => SignUpBlocCubit(),
  child: BlocConsumer<SignUpBlocCubit, SignUpBlocState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    SignUpBlocCubit mycubit = SignUpBlocCubit.get(context) ;

    return Scaffold(

      body: Stack(
        children: [
          // The background view
          Scaffold(
              backgroundColor: Color(0xFF336EA6),
              body: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Text(
                      "Let's Start with  \nsign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(18),
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
                    top: 130,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      width: ScreenUtil().setWidth(390),
                      height: ScreenUtil().setHeight(800),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 140,
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
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: ScreenUtil().setHeight(60),
                                    decoration: BoxDecoration(
                                        border:
                                        Border.all(width: 2, color: Colors.white),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFF336EA6)),
                                    child: TextFormField(
                                        controller: mycubit.namec,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter your name';
                                          }
                                          return null; // Return null if validation succeeds
                                        },



                                        decoration: InputDecoration(
                                          label: Text("Name"),
                                          hintText: "Enter your name",
                                          icon: Icon(Icons.person),
                                        )),
                                  ),
                                ),             // Name textform field
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
controller: mycubit.phonenumberc,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your phone number';
                                        } else if (!RegExp(r'^[0-9]*$').hasMatch(value)) {
                                          return 'Please enter a valid phone number';
                                        }
                                        return null; // Return null if validation succeeds
                                      },



                                      decoration: InputDecoration(
                                        label: Text("Phone number"),
                                        hintText: "Enter your phone number",
                                        icon: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                ),                 // phone number
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
controller: mycubit.emailc,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your email address';
                                        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                          return 'Please enter a valid email address';
                                        }
                                        return null; } ,



                                      decoration: InputDecoration(
                                        label: Text("Email"),
                                        hintText: "Enter your email",
                                        icon: Icon(Icons.email),
                                      ),
                                    ),
                                  ),
                                ),           //email
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
                                      controller: mycubit.passwordc,
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
                                        hintText: "Enter your password",
                                        icon: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                ),        //password
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
                                      controller: mycubit.passwordc,
                                      obscureText: true,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please confirm your password';
                                        } else if (value != mycubit.passwordc.text) {
                                          return 'Passwords do not match';
                                        }
                                        return null;
                                      },



                                      decoration: InputDecoration(
                                        label: Text("Confirm Password"),
                                        hintText: "RE Enter Your Password",
                                        icon: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                ),         //confirm password

                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    width: ScreenUtil().setWidth(400),
                                    height: ScreenUtil().setWidth(60),
                                    decoration: BoxDecoration(
                                      color: Colors.white ,
                                      borderRadius: BorderRadius.circular(15),

                                    ),
                                    child: Center(
                                      child: InkWell(

                                        onTap: (){


                                          if (_formKey.currentState!.validate())
                                            {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

                                            }

                                        },


                                        child: Text("Sign up" , style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: ScreenUtil().setSp(20) ,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF336EA6) ,

                                        ),),
                                      ),
                                    ),
                                  ),
                                ),   // sign up button

                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF336EA6),
                      ),
                      width: ScreenUtil().setWidth(370),
                      height: ScreenUtil().setHeight(750),                     //last container
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Have already an account ?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(10),
                            color: Color(0xFF336EA6),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setSp(15),
                        ),
                        Text("Sign In",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(15),
                              color: Color(0xFF233B55),
                            )),
                      ],
                    ),
                  ),  //have already account ? sign in

                ],
              )) ,
          // The overlay view
          if (mycubit.isOverlayVisible)
            GestureDetector(
              onTap: () {
                setState(() {
                  mycubit.isOverlayVisible = false;
                });
              },
              child: Container(
                color: Colors.black54,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      SizedBox(height: 20.0),



                      Container(
                        height: ScreenUtil().setHeight(400),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20) ,
                            color: Colors.white

                        ),
                        child: Column(
                          children: [
                            Text("""The code has been send \n        to your mail""",
                              style: TextStyle(
                                fontFamily: 'Poppins' ,
                                fontSize: ScreenUtil().setSp(10) ,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFF233B55),


                              ),),
                            SizedBox(height: 10,) ,
                            Text("""Enter Code""",
                              style: TextStyle(
                                fontFamily: 'Poppins' ,
                                fontSize: ScreenUtil().setSp(15) ,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFF233B55),


                              ),),
                            OtpTextField (),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Text("Time Reminig 1:54",
                                  style: TextStyle(
                                    fontFamily: 'Poppins' ,
                                    fontSize: ScreenUtil().setSp(14) ,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFF233B55),


                                  ),),
                                Text("Resend Code",
                                  style: TextStyle(
                                    fontFamily: 'Poppins' ,
                                    fontSize: ScreenUtil().setSp(10) ,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF233B55),


                                  ),),
                              ],),
                            SizedBox(height: 30,) ,
                            Row(

                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Done",
                                  style: TextStyle(
                                    fontFamily: 'Poppins' ,
                                    fontSize: ScreenUtil().setSp(15) ,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0XFF233B55),


                                  ),),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
                              ],),
                          ],
                        ),),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  },
),
);
  }
}
