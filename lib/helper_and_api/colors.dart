

import 'package:flutter/material.dart';

const white_color = Color(0xFFFFFFFF);
const black_color = Color(0xFF000000);
const grey_color = Color(0xFF969696);
const dark_grey_color = Color(0xFF424242);
const theam_dark_blue_color = Color(0xFF0D5295);
const theam_sky_blue_color = Color(0xFF10B1F9);
const background_color = Color(0xFFEDF9FF);




Color hexToColor(String hexString) {
  hexString = hexString.toUpperCase().replaceAll("#", ""); // Remove #
  
  if (hexString.length == 6) {
    hexString = "FF$hexString"; // Add full opacity if alpha is missing
  }

  return Color(int.parse(hexString, radix: 16));
}





