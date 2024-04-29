import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home_user_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize: Size(400, 600));
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:ScreenUtil().setHeight(100) ,),
          SizedBox(width: double.infinity,),
          Image.asset("images/Group 169.png") ,
          InkWell(
            onTap: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeUserScreen()));
              
            },
            
            child: Text("Welcome to our app" ,style: TextStyle(
              color:Color(0xFF336EA6) ,
              fontWeight: FontWeight.w500 ,
              fontSize: ScreenUtil().setSp(15) ,
              fontFamily: 'Open Sans'


            ),),
          )
        ],
      ),


    );
  }
}
