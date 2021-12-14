import 'package:bartermade/auth/SignUpInfo.dart';
import 'package:bartermade/auth/welcome23.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:bartermade/utils/routes.dart';
import 'package:bartermade/widgets/flexible_column.dart';
import 'package:bartermade/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  double width, height;
  String _emailController, _passwordController;

  // TextEditingController _emailController = TextEditingController();

  // TextEditingController _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomTopBar(name: "assets/images/Group 3.png"),
              Flexible(
                flex: 5,
                child: ListView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _signupFormContainer(context),
                    ],
                  ),
                ]),
              ),
            ]),
      ),
    );
  }

  Widget _signupFormContainer(BuildContext context) {
    return Form(
      key: formkey,
      child: Container(
        // height:MediaQuery.of(context).size.height*5,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(50),
            topStart: Radius.circular(50),
          ),
          color: AppColors.cotainerColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Signup", style: TextStyle(fontSize: 40, color: Colors.black)),
            Text(
              'Lets get Started',
              style: TextStyle(color: AppColors.textGrey),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text('Email', style: TextStyle(color: AppColors.textGrey)),
            ),
            TextFields.emailTextField(
              context,
              hintText: "Email address",
              onsaved: (value) => _emailController = value,
              validaterMsg: 'Enter valid Email',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 05),
              child:
                  Text('Password', style: TextStyle(color: AppColors.textGrey)),
            ),
            TextFields.passwordTextField(
              context,
              hintText: "Password",
              onsaved: (value) => _passwordController = value,
              validaterMsg: "Please enter the password",
            ),
            Buttons.textButton(context, text: "Create Account", ontap: () {
              AppRoutes.push(context, SignUpInfo());
            }),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Forgot Password?",
                      style:
                          TextStyle(fontSize: 12, color: AppColors.textGrey)),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Buttons.googleButton(context)),
            Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Buttons.facebookButton(context)),
            Padding(
              padding: const EdgeInsets.all(08),
              child: Row(
                children: [
                  SizedBox(width: 50),
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 15, color: AppColors.textGrey),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomePage()));
                      },
                      child: Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 15, color: AppColors.pinkColor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
