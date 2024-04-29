import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/Category_screen/Category_screen_container.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        context ,
        designSize: Size(700, 990));
    return Scaffold(appBar: AppBar(
      leading: Icon(Icons.search),
      backgroundColor: Color(0xFF336EA6),
      title: Center(
        child: Text("Category",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: ScreenUtil().setSp(24),

        ),),
      ),
    ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Expanded(child: CategoryView (imgeurl: "تخاطب 1.png",text: "Speech") ) ,
              SizedBox(width: ScreenUtil().setWidth(10),) ,
              Expanded(child: CategoryView (imgeurl: "توحد 1.png",text: "Autism") ) ,

            ],),
          ) ,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Expanded(child: CategoryView (imgeurl: "صعوبه تعلم 1.png",text: "Learning difficult") ) ,
              SizedBox(width: ScreenUtil().setWidth(10),) ,
              Expanded(child: CategoryView (imgeurl: "اختبار ذكاء 1.png",text: "Intelligence test") ) ,

            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Expanded(child: CategoryView (imgeurl: "تعديل سلوك 1.png",text: "Behavior modification") ) ,
              SizedBox(width: ScreenUtil().setWidth(10),) ,
              Expanded(child: CategoryView (imgeurl: "تنميه مهارات 1.png",text: "Skill development") ) ,

            ],),
          )
        ],
      )) ;
  }
}
