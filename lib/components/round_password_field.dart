import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_login_signup/components/text_filed_container.dart';
import 'package:flutter_splashscreen_login_signup/constant.dart';

class RoundPasswordField extends StatelessWidget {
  final ValueChanged<String> onchanged;
  const RoundPasswordField({
    Key key, this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        obscureText: true,
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(Icons.lock,
          color: kPrimaryColor,),
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor,),
          border: InputBorder.none,  
          ),
      ),
    );
  }
}