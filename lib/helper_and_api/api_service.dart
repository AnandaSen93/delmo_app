import 'dart:convert';
import 'dart:io';
import 'package:delmo_app/helper_and_api/api_constant.dart';
import 'package:delmo_app/helper_and_api/loader.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ApiServices extends ChangeNotifier {
  Future<dynamic> postApiCall(
      Map<String, dynamic> params, String apiName) async {
    Future.delayed(Duration.zero, () {
      GlobalLoader().showLoadingDialog();
    });
    try {
      // Start loading
      notifyListeners();
      final mainUrl = '${ApiConstant.baseUrl}$apiName';

      var url = Uri.parse(mainUrl);
      // var response = await http.post(url, body: jsonEncode(body));

      print("URL: $mainUrl");
      print("Params: $params");

      var request = http.MultipartRequest('POST', url);

      // Convert data to Map<String, String>

      for (var entry in params.entries) {
        final key = entry.key;
        final value = entry.value;

        if (value is http.MultipartFile) {
          // Already built MultipartFile
          request.files.add(value);
        } else if (value is File) {
          // Raw File object – convert to MultipartFile
          request.files.add(await http.MultipartFile.fromPath(key, value.path));
        } else if (value is String &&
            value.startsWith('/') &&
            File(value).existsSync()) {
          // String file path – convert to MultipartFile
          request.files.add(await http.MultipartFile.fromPath(key, value));
        } else {
          // Regular field
          request.fields[key] = value.toString();
        }
      }

      // params.forEach((key, value) {
      //   request.fields[key] = value.toString();
      // });

      // request.fields.addAll(params);
      // request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();

      print("StatusCode: ${response.statusCode}");
      print("Response: $response");

      // if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      print("Response: $responseBody");
      final jsonMap = jsonDecode(responseBody);
      print("Response: $responseBody");
      // Map JSON to the ApiResponse model
      return responseBody;
      // }
    } catch (e) {
      print(e);
    } finally {
      GlobalLoader().hideLoadingDialog(); // Stop loading
      notifyListeners();
    }
  }
}

class Helper {
  static bool isValidEmail(String email) {
    // Regular expression for email validation
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }
}
