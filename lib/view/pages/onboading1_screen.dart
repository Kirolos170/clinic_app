import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import 'onboading2_screen.dart';
class Onboading1Screen extends StatelessWidget {

  Onboading1Screen();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    ScreenUtil.init(
        context ,
        designSize: Size(600, 900));

    return Scaffold(


      body: Scaffold(

          backgroundColor: Color(0xFF336EA6) ,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 10,) ,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("AR" , style: TextStyle(fontWeight: FontWeight.w700 ,fontSize: ScreenUtil().setSp(24),fontFamily: 'Poppins',color: Color(0xFFFFFFFF)) ,

                    ) ,
                    Text("Skip" , style:TextStyle(fontWeight: FontWeight.w500 ,fontSize: ScreenUtil().setSp(24),fontFamily: 'Poppins',color: Color(0xFFFFFFFF)))

                  ],),
              ),

              SizedBox(height:30),
              SizedBox(width: double.infinity,),
              Image.asset("images/date 1.png",width: ScreenUtil().setWidth(341),height: ScreenUtil().setHeight(341)) ,
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      SizedBox(width: double.infinity,),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text("Choose date and time" ,style: TextStyle(
                            fontSize: ScreenUtil().setSp(24) , fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xFF233B55)
                        ),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("The application can help you choose the appropriate date and time for you and the selected doctor." ,style: TextStyle(
                            fontSize: ScreenUtil().setSp(18) , fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color(0xFF233B55)
                        ),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Image.asset("images/Frame 1.png") ,
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              children: [
                                SizedBox(width: 80,),
                                Text("Next" ,style: TextStyle(
                                    fontSize: ScreenUtil().setSp(24) , fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF233B55)
                                ),) ,
                                SizedBox(width: 5,),
                                InkWell(
                                    onTap: ()
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboading2Screen()));
                                    },
                                    child: Image.asset("images/Group.png")),
                              ],
                            ),
                          )
                        ],),
                      )
                    ],
                  ),

                  height: ScreenUtil().setHeight(381),
                  width: ScreenUtil().setWidth(600),         decoration: BoxDecoration(

                    color: Colors.white ,

                    borderRadius: BorderRadius.circular(20)



                ),





                ),
              ),
            ],

          )

      ),
    );
  }
}
