import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class DefaultButton extends StatelessWidget {

  final String text;
  final VoidCallback pressed;

  const DefaultButton({Key? key, required this.text, required this.pressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: pressed,
        child: Text(text, style: TextStyle(fontSize: getProportionateScreenWidth(18), color: Colors.white)),
      ),
    );
  }
}

