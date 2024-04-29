import 'package:clinic/view/pages/onboading_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboadingScreen()));

              },
              child: Image.asset("images/Logo Shapes 17.png")) ,
          SizedBox(height: 20,),
          SizedBox(width: double.infinity),
          Text("Markaz ElAmal" , style: splashtextstyle) ,


        ],
      ),


    );
  }
}
