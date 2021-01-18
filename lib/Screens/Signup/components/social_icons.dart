import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_login_signup/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcons extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcons({
    Key key, 
    this.iconSrc, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: press,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kprimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc,
        height: 20, width: 20,
        ),
      ),
    );
  }
}


