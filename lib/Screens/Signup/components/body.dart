import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_login_signup/Screens/Signup/components/background.dart';
import 'package:flutter_splashscreen_login_signup/Screens/Signup/components/or_divider.dart';
import 'package:flutter_splashscreen_login_signup/Screens/Signup/components/social_icons.dart';
import 'package:flutter_splashscreen_login_signup/Screens/login/login_screen.dart';
import 'package:flutter_splashscreen_login_signup/components/already_have_an_account_check.dart';
import 'package:flutter_splashscreen_login_signup/components/round_button.dart';
import 'package:flutter_splashscreen_login_signup/components/round_input_field.dart';
import 'package:flutter_splashscreen_login_signup/components/round_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    Key key, 
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset("assets/icons/signup.svg",
            height: size.height * 0.35,
            ),
            RoundInputFiled(
              hintText: "Your Name",
              onchanged: (value) {},
            ),
            RoundInputFiled(
              hintText: "Your Email",
              onchanged: (value) {},
            ),
            RoundPasswordField(
              onchanged: (value) {},
            ),
            RoundButton(
              text: "SIGNUP",
              press: (){},
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return LoginScreen();},),);
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcons(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                 SocialIcons(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                 SocialIcons(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}

