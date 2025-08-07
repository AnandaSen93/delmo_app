// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    int? isSuccess;
    String? message;
    Data? data;

    LoginModel({
        this.isSuccess,
        this.message,
        this.data,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

  get responseData => null;

    Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    String? uid;
    String? fullName;
    String? email;
    String? image;
    String? mobile;
    String? countryCode;
    String? accessToken;
    String? refreshToken;
    String? deviceToken;
    String? otp;

    Data({
        this.uid,
        this.fullName,
        this.email,
        this.image,
        this.mobile,
        this.countryCode,
        this.accessToken,
        this.refreshToken,
        this.deviceToken,
        this.otp,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        uid: json["uid"],
        fullName: json["fullName"],
        email: json["email"],
        image: json["image"],
        mobile: json["mobile"],
        countryCode: json["countryCode"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        deviceToken: json["deviceToken"],
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "uid": uid,
        "fullName": fullName,
        "email": email,
        "image": image,
        "mobile": mobile,
        "countryCode": countryCode,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "deviceToken": deviceToken,
        "otp": otp,
    };
}
