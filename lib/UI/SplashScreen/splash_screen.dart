import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rohandrayhan/Utils/colors.dart';
import 'package:rohandrayhan/Utils/constant.dart';
import 'package:rohandrayhan/Utils/translation_key.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/appIcon.png",width: 500,height: 400,),
          const SizedBox(height: 20,),
          const Text ("روح و ريحان",
            style: TextStyle(
                fontFamily: fontFamilyName,
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: kGreenColor
            ),

          ),
          const SizedBox(height: 20,),
          SizedBox(
            child: DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily:fontFamilyName,
                  color: kSeineColor
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("فَرَوْحٌ وَرَيْحَانٌ وَجَنَّتُ نَعِيمٍ",speed: const Duration(milliseconds: 100)),
                ],
                totalRepeatCount: 1,
                onFinished: (){

                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
