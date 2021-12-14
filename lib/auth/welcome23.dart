import 'package:bartermade/auth/SignUpInfo.dart';
import 'package:bartermade/provider/auth_provider.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/utils/app_images.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:bartermade/widgets/text_fields.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _pinned = true;
  double width, height;
  String _emailController, _passwordController;
  final formkey = GlobalKey<FormState>();
// AuthProvider auth = Provider.of<AuthProvider>(context);
  void doLogin() {
    final form = formkey.currentState;
    if (form.validate()) {
      print(_passwordController.toString() + _emailController.toString());
      form.save();
      // final Future<Map<String, dynamic>> response =
      //     auth.login(_emailController, _passwordController);
    } else {
      Flushbar(
        title: "invalid Form",
        message: "please complete the form properly",
        duration: Duration(seconds: 10),
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            automaticallyImplyLeading: false,
            expandedHeight: 250.0,
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
                title: Text('BARTERMADE',
                    style: TextStyle(
                        color: AppColors.pinkColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
                background: Center(child: Image(image: AppImages.GroupImg))),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  _loginFormContainer(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginFormContainer(BuildContext context) {
    return Form(
      key: formkey,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        decoration: BoxDecoration(
          color: AppColors.cotainerColor,
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(50),
            topStart: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'IBMPlexSans',
                  fontWeight: FontWeight.w500,
                )),
            Text(
              'Keep your data save',
              style: TextStyle(
                color: AppColors.textGrey,
                fontFamily: 'IBMPlexSans',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Email',
                style: TextStyle(color: AppColors.textGrey),
              ),
            ),
            TextFields.emailTextField(
              context,
              hintText: "Email address",
              onsaved: (value) => _emailController = value,
              validaterMsg: 'Enter valid Email',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 05),
              child: Text(
                'Password',
                style: TextStyle(color: AppColors.textGrey),
              ),
            ),
            TextFields.passwordTextField(
              context,
              hintText: "Password",
              onsaved: (value) => _passwordController = value,
              validaterMsg: "Please enter the password",
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 10),
              alignment: Alignment.topRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 12, color: AppColors.textGrey),
              ),
            ),
            Buttons.textButton(context, text: "Login", ontap: doLogin),

            // AppRoutes.push(context, Categories());
            //),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Buttons.googleButton(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Buttons.facebookButton(context),
            ),
            Padding(
              padding: const EdgeInsets.all(05),
              child: Row(
                children: [
                  SizedBox(width: 50),
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 15, color: AppColors.textGrey),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpInfo()));
                      },
                      child: Text(
                        "Signup",
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
