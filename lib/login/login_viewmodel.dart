import 'package:delmo_app/helper_and_api/api_constant.dart';
import 'package:delmo_app/helper_and_api/api_service.dart';
import 'package:delmo_app/login/login_model.dart';
import 'package:delmo_app/login/otp/otp.dart';
import 'package:delmo_app/login/otp/otp_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewmodel extends ChangeNotifier {
  String phone_code = '+91';

  final TextEditingController phone_number = TextEditingController();

  void navigateToOTP(BuildContext context) async {
     Provider.of<OtpViewmodel>(context, listen: false).setPhoneNumberCode(phone_code, phone_number.text);

    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtpView()),
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
  }

  String checkValidation() {
    print(phone_number.text);
    String str = "";
    if (phone_code.isEmpty) {
      str = "Please select phone country code.";
    } else if (phone_number.text == "") {
      str = "Please enter your phone number.";
    }else if (phone_number.text.length < 10 || phone_number.text.length > 12) {
      str = "Please enter your valid phone number.";
      }else {
      str = "success";
    }
    return str;
  }




}
