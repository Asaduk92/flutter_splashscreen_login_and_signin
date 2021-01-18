import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_login_signup/Screens/Signup/signup_screen.dart';
import 'package:flutter_splashscreen_login_signup/Screens/login/components/background.dart';
import 'package:flutter_splashscreen_login_signup/components/already_have_an_account_check.dart';
import 'package:flutter_splashscreen_login_signup/components/round_button.dart';
import 'package:flutter_splashscreen_login_signup/components/round_input_field.dart';
import 'package:flutter_splashscreen_login_signup/components/round_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
   
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("LOGIN",
             style: TextStyle(
               fontWeight: FontWeight.bold
             ),),
             SizedBox(height: size.height * 0.03,),
             SvgPicture.asset("assets/icons/login.svg",
             height: size.height * 0.35,
             ),
             SizedBox(height: size.height * 0.03,),
             RoundInputFiled(
               hintText: "Your Email",
               onchanged: (value) {},
               ),
               RoundPasswordField(
                 onchanged: (value){},
               ),
               RoundButton(
                 text: "LOGIN",
                 press: (){},
               ),
               SizedBox(height: size.height * 0.03,),
               AlreadyHaveAnAccountCheck(
                 press: (){
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







