import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_login_signup/Screens/Signup/signup_screen.dart';
import 'package:flutter_splashscreen_login_signup/Screens/login/login_screen.dart';
import 'package:flutter_splashscreen_login_signup/components/round_button.dart';
import 'package:flutter_splashscreen_login_signup/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provide us total height and with of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME TO DIGITAL DECODERZ",
            style: TextStyle(
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,),
              SizedBox(height: size.height * 0.05,),
              RoundButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  },
                  ),
                );
                },
              ),
              RoundButton(
                text: "SIGN UP",
                color: kprimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                     context, 
                     MaterialPageRoute(
                       builder: (context)
                       {return SignUpScreen();},
                       ),
                       );
                },
              ),
          ],
          ),
      ),
    );
  }
}

