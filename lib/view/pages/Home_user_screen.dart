import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/Home_user_screen/Home_user_screen_Categories.dart';
import '../components/Home_user_screen/Home_user_screen_navigation bar.dart';
import '../components/core_reusable components/custom_widget_doctors.dart';
import 'category_screen.dart';
class HomeUserScreen extends StatelessWidget {
  const HomeUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize: Size(700, 990));

    return Scaffold(
      // bottomNavigationBar: Navbar(),

         body: SafeArea(
           child: Padding(
             padding: const EdgeInsets.all(5.0),
             child: Column(
mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     SizedBox(width: 20,) ,
                     Image.asset("images/Group 13994 (1).png"),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0 , top: 25),
                          child: Text("Markaz ElAmal",style: TextStyle(
                           fontSize: ScreenUtil().setSp(10),
                           fontFamily: 'Peralta' ,
                           fontWeight: FontWeight.w400,
                           color: Color(0xFF336EA6)

                       ),),
                        ),
                     SizedBox(width: ScreenUtil().setSp(200),),
                     InkWell(
                       onTap: (){},
                       child: Container(

                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Color(0xFF336EA6)

                         ),

                         width: 35,
                         height: 35,

                         child: Image.asset("images/bell.png"),
                       ),
                     ),
                     SizedBox(width: ScreenUtil().setSp(15),),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF336EA6)

                        ),
                        width: 35,
                        height: 35,

                        child: Image.asset("images/Vector.png"),
                      ),
                    ),



                   ],
                 ),
                 SizedBox(height: 15,) ,
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Row(children: [

                     Container(

                       child: Row(
                         children: [
                           IconButton(onPressed: (){}, icon: Icon(Icons.search , size: 35,color: Color(0xFF336EA6),)) ,
                           Text("Search" ,style: TextStyle(color: Color(0xFF336EA6),) )
                         ],
                       ),
                       width: ScreenUtil().setWidth(400),
                       height: ScreenUtil().setHeight(60),

                       decoration: BoxDecoration(
                           color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color: Color(0xFF336EA6) , width: 1)


                       ),

                     ),
SizedBox(width: ScreenUtil().setWidth(40),)
,
                     InkWell(
                       onTap: (){},
                       child: Container(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Color(0xFF336EA6)

                         ),
                         width: ScreenUtil().setWidth(60),
                         height: ScreenUtil().setHeight(50),

                         child: Image.asset("images/Layer 15.png"),
                       ),
                     ),

                   ],),
                 ),
                 SizedBox(height: 15,) ,
                 Container(
child: Image.asset("images/Mask group.png",width: ScreenUtil().setWidth(600),
  height: ScreenUtil().setHeight(150),
),
                   width: ScreenUtil().setWidth(600),
                   height: ScreenUtil().setHeight(150),
                   decoration: BoxDecoration(

                     borderRadius: BorderRadius.circular(20),

                   ),
                 ),
                 SizedBox(height: 15,) ,
                 Row(children: [
                   SizedBox(width: ScreenUtil().setWidth(20),),
                   Text("Category",style: TextStyle(
                     color: Color(0xFF336EA6),
                     fontWeight: FontWeight.w400,
                     fontFamily: 'Poppins',
                     fontSize: ScreenUtil().setSp(24)
                   ),),
                   SizedBox(width: ScreenUtil().setWidth(250),),
                   Text("See All",style: TextStyle(
                       color: Color(0xFF336EA6),
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       fontSize: ScreenUtil().setSp(15)
                   ),),
                   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),

                 ],),
                 SizedBox(height: 15,) ,
            SingleChildScrollView(
                scrollDirection: Axis.horizontal ,
              child: Row(children: [       CategoryContainer(context: context , text: "Speech"),
                SizedBox(width: ScreenUtil().setWidth(10),) ,
                CategoryContainer(context: context , text: "Autism"),
                SizedBox(width: ScreenUtil().setWidth(10),) ,
                CategoryContainer(context: context , text: "Learning difficulties"),
                SizedBox(width: ScreenUtil().setWidth(10),) ,
                CategoryContainer(context: context , text: "Intelligence test"),
                SizedBox(width: ScreenUtil().setWidth(10),) ,
                CategoryContainer(context: context , text: "Behavior modification"),
              SizedBox(width: ScreenUtil().setWidth(10),) ,
                CategoryContainer(context: context , text: "Skills development"),
           SizedBox(width: ScreenUtil().setWidth(10),) ,

                ],),
            ),
                 Row(children: [
                   SizedBox(width: ScreenUtil().setWidth(20),),
                   Text("Doctors",style: TextStyle(
                       color: Color(0xFF336EA6),
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       fontSize: ScreenUtil().setSp(10)
                   ),),
                   SizedBox(width: ScreenUtil().setWidth(190),),
                   Text("See All",style: TextStyle(
                       color: Color(0xFF336EA6),
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       fontSize: ScreenUtil().setSp(8)
                   ),),
                   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),

                 ],),



                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal ,
                   child: Row(

                     children: [

                     Mycustomwidget () ,
                       SizedBox(width: ScreenUtil().setWidth(10),) ,// doctor custom widget
                     Mycustomwidget ()  ,
                       SizedBox(width: ScreenUtil().setWidth(10),) ,
                     Mycustomwidget () ,

                   ],),
                 )



               ],
             ),
           ),
         ),
    );
  }
}
