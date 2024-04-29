import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




  Widget CategoryContainer ({required context , required String text}) {
    ScreenUtil.init(context,designSize: Size(400, 600));
    return  Container(
      child: Center(
        child: Text("${text}" ,style:
          TextStyle(
            fontSize: ScreenUtil().setSp(10),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
color: Colors.white

          )

          ,),
      ),
      width: ScreenUtil().setWidth(190),
      height: ScreenUtil().setHeight(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF336EA6)

      ),


    ) ;
  }

