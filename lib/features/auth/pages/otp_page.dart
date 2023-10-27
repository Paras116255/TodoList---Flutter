import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:to_do_list/common/utils/constants.dart';
import 'package:to_do_list/common/widgets/appstyle.dart';
import 'package:to_do_list/common/widgets/height_spacer.dart';
import 'package:to_do_list/common/widgets/reusable_text.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeightSpacer(height: AppConst.kHeight*0.12),
              Padding(padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset("assets/images/todo.png",
                width: AppConst.kWidth*0.5,),),

              const HeightSpacer(height: 26),

              ReusableText(text: "Enter your OTP",
                  style: appstyle(18, AppConst.kLight, FontWeight.bold)),

              const HeightSpacer(height: 26),

              Pinput(
                length: 6,
                showCursor: true,
                onCompleted: (value){
                  if(value.length == 6){}
                },
                onSubmitted: (value){
                  if(value.length == 6){}
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
