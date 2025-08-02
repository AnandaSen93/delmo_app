import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:flutter/material.dart';

const textStyleForTextField = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16,
  color: theam_dark_blue_color,
  fontWeight: FontWeight
      .w400, // This uses Roboto-Medium or Bold depending on available weights
  decoration: TextDecoration.none,
);

const textStyleForHeading = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  color: theam_dark_blue_color,
  fontWeight: FontWeight
      .w800, // This uses Roboto-Medium or Bold depending on available weights
  decoration: TextDecoration.none,
);

const textStyleForName = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 18,
  color: theam_dark_blue_color,
  fontWeight: FontWeight
      .w300, // This uses Roboto-Medium or Bold depending on available weights
  decoration: TextDecoration.none,
);

const textStyleForphone = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 12,
  color: theam_dark_blue_color,
  fontWeight: FontWeight
      .w400, // This uses Roboto-Medium or Bold depending on available weights
  decoration: TextDecoration.none,
);
const textStyleForSubHeading = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 18,
  color: grey_color,
  fontWeight: FontWeight
      .w500, // This uses Roboto-Medium or Bold depending on available weights
  decoration: TextDecoration.none,
);

const textStyleForButton = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 18,
  color: white_color,
  fontWeight: FontWeight
      .w400, // This uses Roboto-Medium or Bold depending on available weights
  decoration: TextDecoration.none,
);

// BoxDecoration
final box_border = BoxDecoration(
  border: BoxBorder.all(color: dark_grey_color, width: 1),
  borderRadius: BorderRadius.circular(8),
);

final top_two_rounded = BoxDecoration(
  color: theam_sky_blue_color,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
  ),
);

final text_decoration_clear = BoxDecoration(
  color: Colors.transparent, // No background color for iOS field
);

final otp_decoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/otp_background.png'), // Your image path
    fit: BoxFit.cover, // Cover entire container
  ),
);

final gradient_button_decoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      theam_sky_blue_color, // Start color (blue)
      theam_dark_blue_color, // End color (light blue)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
);

final circleWithBorder = BoxDecoration(
  shape: BoxShape.circle, // background color
  border: Border.all(
    color: white_color, // border color
    width: 2.0, // border width
  ),
);

// shadow
final shadowBottom = BoxShadow(
  color: Color.fromRGBO(0, 0, 0, 0.1), // shadow color
  spreadRadius: 2, // how much the shadow spreads
  blurRadius: 5, // how soft the shadow is
  offset: Offset(2, 3), // shadow position (x, y)
);
