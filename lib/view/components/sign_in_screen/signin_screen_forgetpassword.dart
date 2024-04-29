import 'package:clinic/view/components/sign_in_screen/signin_screen_resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Future forgetpassword (context)
{
  ScreenUtil.init(
    context ,
      designSize: Size(600, 990));
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
          width: ScreenUtil().setWidth(300) ,
          height: ScreenUtil().setHeight(500) ,

          decoration: BoxDecoration(
            color: Color(0xFFFFFF),

          ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Forget Password", style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenUtil().setSp(24),
                    color: Color(0xFF233B55),
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Enter your email for verification process we will send 5 digits code to your email",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setSp(10),
                      color: Color(0xFF233B55),
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Email", style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil().setSp(24),
                      color: Color(0xFF233B55)
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(


                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Email"),
                        icon: Icon(Icons.email),
                      ),

                    ),
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)

                    )
                    ,
                  height: ScreenUtil().setHeight(60),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(

                    child: Container(

                      decoration: BoxDecoration(
                        color: Color(0xFF336EA6),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      height: ScreenUtil().setHeight(60),
                      width: ScreenUtil().setWidth(600),
                      child: Center(


        child: Text("Continue", style: TextStyle(
                              fontSize: ScreenUtil().setSp(24),
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Poppins'
                          ),),

                      ),),
                  onTap:  (){

                    resetpassword (context);

                  },),
                )
              ],
            ),



          );
      }
  )




) ;

  }
