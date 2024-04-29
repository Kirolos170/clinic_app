import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 Widget CategoryView({String? imgeurl , String? text})
 {



   return (Container(
               width: ScreenUtil().setWidth(200),
               height: ScreenUtil().setHeight(240),

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Color(0xFF336EA6),
               ),child:
     Column(children: [
       SizedBox(height: ScreenUtil().setHeight(10),) ,
       Image.asset("images/${imgeurl}",width: ScreenUtil().setWidth(300),height: ScreenUtil().setHeight(100),
                 fit: BoxFit.fill,

               ),
       SizedBox(height: ScreenUtil().setHeight(15),) ,


    Text("${text}",style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: ScreenUtil().setSp(15),
      fontFamily: 'Poppins',


    ),),

Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [

  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.white,)),
],)

     ],)



     ,) ) ;


   }


   // return Stack(
   //   children: [
   //     Positioned(
   //       top: 5,
   //       left: 5,
   //       child: Container(
   //         width: ScreenUtil().setWidth(50),
   //         height: ScreenUtil().setHeight(50),
   //
   //         decoration: BoxDecoration(
   //           borderRadius: BorderRadius.circular(20),
   //           color: Color(0xFF336EA6),
   //         ),
   //
   //
   //
   //       ),
   //     ),
   //     Positioned(
   //         top: 10,
   //         left: 10,
   //         child: Image.asset("images/تخاطب 1.png",width: ScreenUtil().setWidth(230),height: ScreenUtil().setHeight(100),
   //           fit: BoxFit.fill,
   //
   //         )),
   //     Positioned(
   //
   //       top: 110,
   //       left: 40,
   //       child: Text("Speech",style: TextStyle(
   //         color: Colors.white,
   //         fontWeight: FontWeight.w600,
   //         fontSize: ScreenUtil().setSp(24),
   //         fontFamily: 'Poppins',
   //
   //
   //       ),),
   //     )
   //   ],
   // );






