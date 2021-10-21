import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text("Complete Profile", style: headingStyle,),
              Text("Complete your details or continue \nwith social media", textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text("By continuing your confirm that you agree \nwith our Term and Condition", textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}



