import 'package:bartermade/auth/user.dart';
import 'package:bartermade/auth/welcome23.dart';
import 'package:bartermade/provider/auth_provider.dart';
import 'package:bartermade/provider/user_provider.dart';
import 'package:bartermade/widgets/date_color.dart';
import 'package:bartermade/utils/app_colors.dart';
import 'package:bartermade/utils/app_images.dart';
import 'package:bartermade/widgets/buttons.dart';
import 'package:bartermade/widgets/text_fields.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpInfo extends StatefulWidget {
  const SignUpInfo({Key key}) : super(key: key);
  @override
  State<SignUpInfo> createState() => _SignUpInfoState();
}

class _SignUpInfoState extends State<SignUpInfo> {
  bool _pinned = true;
  double width, height;
  String _emailController,
      _passwordController,
      _textController,
      _phoneNumberController;

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    var loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        Text("Registering ... Please wait"),
      ],
    );
    void doSignup() {
      final form = formkey.currentState;
      if (form.validate()) {
        form.save();
        print(_textController.toString() +
            _emailController.toString() +
            _passwordController.toString() +
            _phoneNumberController.toString());
        if (_passwordController.length >= 8) {
          auth.register(_emailController, _passwordController).then((response) {
            if (response["status"]) {
              User user = response['data'];
              Provider.of<UserProvider>(context).setUser(user);
              Navigator.pushReplacementNamed(context, '/login');
            } else {
              Flushbar(
                title: 'Registration fail',
                message: response.toString(),
                duration: Duration(seconds: 4),
              ).show(context);
            }
          });
        } else {
          Flushbar(
            title: 'invalid form ',
            message: 'Password cannot be less than 8',
            duration: Duration(seconds: 4),
          ).show(context);
        }
      } else {
        Flushbar(
          title: 'invalid form ',
          message: 'Please filled all fields',
          duration: Duration(seconds: 4),
        ).show(context);
      }
    }

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
                background: Center(child: Image(image: AppImages.bgroundImg))),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: formkey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(50),
                          topStart: Radius.circular(50)),
                      color: AppColors.cotainerColor),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign up",
                          style: TextStyle(fontSize: 30, color: Colors.black)),
                      Text(
                        "Let's get Started",
                        style: TextStyle(color: AppColors.textGrey),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Name',
                          style: TextStyle(color: AppColors.textGrey),
                        ),
                      ),
                      TextFields.TextFieldWidget(context,
                          hintText: 'Name',
                          onsaved: (value) => _textController = value,
                          validaterMsg: 'Enter something'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Text(
                          'Email',
                          style: TextStyle(color: AppColors.textGrey),
                        ),
                      ),
                      TextFields.emailTextField(context,
                          hintText: "Email address",
                          onsaved: (value) => _emailController = value,
                          // controller: _emailController,
                          validaterMsg: 'Enter valid Email'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Text(
                          'Password',
                          style: TextStyle(color: AppColors.textGrey),
                        ),
                      ),
                      TextFields.passwordTextField(context,
                          hintText: "Password",
                          onsaved: (value) => _passwordController = value,
                          //controller: _passwordController,
                          validaterMsg: "Please enter the password"
                          //'Password cannot be less than 8'

                          ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Text(
                          'Phone No',
                          style: TextStyle(color: AppColors.textGrey),
                        ),
                      ),
                      TextFields.PhoneNumberWidget(context,
                          hintText: "Phone number",
                          onsaved: (value) => _phoneNumberController = value,
                          validaterMsg: 'Please correct a phone number'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                        child: Text(
                          'Age',
                          style: TextStyle(color: AppColors.textGrey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: ColorDate(),
                      ),
                      //////////////////////////////////////////////
                      auth.loggedInStatus == Status.Authenticating
                          ? loading
                          : Buttons.textButton(context,
                              text: "Next", ontap: doSignup),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(08),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?\t\t",
                                style: TextStyle(
                                    fontSize: 15, color: AppColors.textGrey)),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WelcomePage()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.pinkColor),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
