import 'package:clinic/view/components/sign_in_screen/signin_screen_otp.dart';
import 'package:clinic/view/components/sign_in_screen/signin_screen_resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../pages/signup_screen.dart';
Future resetpassword (context)
{
  ScreenUtil.init(
      context ,
      designSize: Size(900, 990));
  return (


      showModalBottomSheet(



          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),

              )  ),
          context: context, builder: (context) {
        return Container(
          width: ScreenUtil().setWidth(400) ,
          height: ScreenUtil().setHeight(990) ,

          decoration: BoxDecoration(
            color: Color(0xFFFFFF),

          ),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Reset Password", style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenUtil().setSp(24),
                    color: Color(0xFF233B55),
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Enter the code you receive in mail and set the new password for your accountso you can login and access all the features",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setSp(15),
                      color: Color(0xFF233B55),
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Enter the 5 digits code", style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil().setSp(24),
                      color: Color(0xFF233B55)
                  ),),
                ),

                OtpTextField() ,                //otp


                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(


                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        suffixIcon: Icon(Icons.visibility_off) ,
                      ),

                    ),
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)

                    )
                    ,
                    height: ScreenUtil().setHeight(80),

                  ),
                ),        //password
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(


                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text("Confirm passord"),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),

                    ),
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)

                    )
                    ,
                    height: ScreenUtil().setHeight(80),

                  ),
                ),        //confirm password
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(

                    child: InkWell(
                      onTap: (){



                      },
                      child: Container(

                        decoration: BoxDecoration(
                          color: Color(0xFF336EA6),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        height: ScreenUtil().setHeight(60),
                        width: ScreenUtil().setWidth(800),
                        child: Center(


                          child: Text("Reset Password", style: TextStyle(
                              fontSize: ScreenUtil().setSp(18),
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Poppins'
                          ),),

                        ),),
                    ),
                    onTap:  (){



                    },),
                )
              ],
            ),
          ),



        );
      }
      )




  ) ;

}
