import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/sign_in/components/custom_surffix_icon.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text("Sign In with your email and password \nor continue with social media", textAlign: TextAlign.center,),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          formErrors(errors: errors),
          DefaultButton(text: "Continue", pressed: (){}),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty){
          setState(() {
            errors.add("Please enter your email");
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg",),
      ),
    );
  }

  TextFormField buildPasswordFormField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg",),
      ),
    );
  }
}

class FormError extends StatelessWidget {


  final List<String> errors;

  const FormError({Key? key, required this.errors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}){
    return Row(
      children: [
        SvgPicture.asset("assets/icons/Error.svg", height: getProportionateScreenWidth(14), width: getProportionateScreenWidth(14),),
        SizedBox(width: getProportionateScreenWidth(10), height: getProportionateScreenWidth(14),),
        Text(error),
      ],
    );
  }
}





