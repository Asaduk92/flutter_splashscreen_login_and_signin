import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_login_signup/components/text_filed_container.dart';
import 'package:flutter_splashscreen_login_signup/constant.dart';

class RoundInputFiled extends StatelessWidget {
  final String hintText;
  final IconData icon ;
  final ValueChanged<String> onchanged;
  const RoundInputFiled({
    Key key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
          icon: Icon(
            icon, 
            color: kPrimaryColor,),
          hintText: hintText,
          border: InputBorder.none,),
      ),
    );
  }
}