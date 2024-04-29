import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Mycustomwidget extends StatelessWidget {

  const Mycustomwidget({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context , designSize:Size(700, 990),);
    return Stack(children: [
      Container(
        width: ScreenUtil().setWidth(550),
        height: ScreenUtil().setHeight(290),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF336EA6) ,


        ),

      ) ,              //main container
      Positioned(
        top: 10,
        left: 10,
        child: Container(
          child: Image.asset("images/Mask group.png" , width: ScreenUtil().setWidth(500) ,height:
     ScreenUtil().setHeight(150),fit: BoxFit.fill,
    ),
          width: ScreenUtil().setWidth(500),
          height: ScreenUtil().setHeight(150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white ,


          ),

        ),
      ) ,                 // container with image
Positioned(
 top: 130,
  left: 10,
  child:   Column(children: [
    Text("Dr: Sara Selem",style: TextStyle(
      color: Colors.white ,
      fontFamily: 'Poppins',
      fontSize: ScreenUtil().setSp(24),
      fontWeight: FontWeight.w500
  
  
    ),),
    Text("12 experience",style: TextStyle(
        color: Colors.white ,
        fontFamily: 'Poppins',
        fontSize: ScreenUtil().setSp(16),
        fontWeight: FontWeight.w500
  
  
    ),),
    Text("L.E 20.99",style: TextStyle(
        color: Colors.white ,
        fontFamily: 'Poppins',
        fontSize: ScreenUtil().setSp(24),
        fontWeight: FontWeight.w700
  
  
    ),),
    Text("Know more...",style: TextStyle(
        color: Colors.white ,
        fontFamily: 'Poppins',
        fontSize: ScreenUtil().setSp(16),
        fontWeight: FontWeight.w500
  
  
    ),)
  ],),
) ,// doctor name and salary and experience
Positioned(
    top: 20,
    right: 30,
    child: Image.asset("images/Vector (2).png")) ,              //heart icon

    Positioned(
      left: 20,
      top: 80,
      child: Container(
        width: ScreenUtil().setWidth(150),
        height: ScreenUtil().setHeight(50),
        decoration: BoxDecoration(
          color:Color(0xFF336EA6)  ,
          borderRadius: BorderRadius.circular(40)

        ),
child: Row(
  children: [
    SizedBox(width: 10,),
    Image.asset("images/Group (1).png"),
    SizedBox(width: 5,),
    Text("4.8" ,style: TextStyle(color: Colors.white),)

  ],
),
      ),
    )    // rate stars

    ],);



  }
}
