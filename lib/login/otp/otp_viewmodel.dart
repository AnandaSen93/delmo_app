import 'package:delmo_app/helper_and_api/api_constant.dart';
import 'package:delmo_app/helper_and_api/api_service.dart';
import 'package:delmo_app/login/login_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpViewmodel extends ChangeNotifier {


  final TextEditingController otp_one = TextEditingController();
  final TextEditingController otp_two = TextEditingController();
  final TextEditingController otp_three = TextEditingController();
  final TextEditingController otp_four = TextEditingController();
  final TextEditingController otp_five = TextEditingController();
  final TextEditingController otp_six = TextEditingController();

  String phone_number = "";
  String phone_code = "";

  void setPhoneNumberCode(String code, String phone) {
    phone_number = phone;
    phone_code = code;
  }

  Future<LoginModel?> loginApiCall() async {
    try {
      final response = await ApiServices().postApiCall({
        "countryCode": phone_code,
        "deviceToken": "",
        "deviceType": "ios",
        "mobile": phone_number,
      }, ApiConstant.loginUrl);

      var loginModel = loginModelFromJson(response);

      if (loginModel.isSuccess == 1) {
        var share = await SharedPreferences.getInstance();
        share.setBool("isLoggedIn", true);
        share.setString("userID", loginModel.responseData?.uid);
        print("isLoggedIn");
      }

      return loginModel;
    } catch (error) {
      print("Error parse: $error");
      return null;
    }
  }
}
