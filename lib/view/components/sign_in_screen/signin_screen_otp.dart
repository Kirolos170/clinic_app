import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class OtpTextField extends StatefulWidget {
  @override
  _OtpTextFieldState createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  List<TextEditingController> controllers = List.generate(
    5,
        (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        context ,
        designSize: Size(600, 900));
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: ScreenUtil().setHeight(80),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) ,
          border: Border.all(color: Colors.black , width: 2)
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            5,
                (index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
              width: ScreenUtil().setWidth(70),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10) ,
                    color: Color(0xFF233B55) ,
                  ),

                  child: TextFormField(
                    controller: controllers[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(

                      contentPadding: EdgeInsets.all(10),
                      counterText: "",
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < controllers.length - 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
              ),
            ),
                ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }
}
