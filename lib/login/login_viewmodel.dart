import 'package:delmo_app/otp/otp.dart';
import 'package:flutter/material.dart';

class LoginViewmodel extends ChangeNotifier {
  

    

  void navigateToOTP(BuildContext context) async {    

   // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);


    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtpView()),
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
    }
  
}