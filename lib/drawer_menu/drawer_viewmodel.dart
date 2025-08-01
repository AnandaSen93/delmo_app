import 'package:delmo_app/about_us/aboutus.dart';
import 'package:delmo_app/contact_us/contactus.dart';
import 'package:delmo_app/home/home.dart';
import 'package:delmo_app/login/login.dart';
import 'package:delmo_app/my_account/myaccount.dart';
import 'package:delmo_app/my_order/myorder.dart';
import 'package:delmo_app/my_request/myrequest.dart';
import 'package:delmo_app/privacy_policy/privacy.dart';
import 'package:delmo_app/terms_conditions/terms.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerViewmodel extends ChangeNotifier {
  




  void navigateToHome(BuildContext context) async {    

   // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);


    // Push the second screen and pass the user data
    final result = Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
      (Route<dynamic> route) => false,
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
    }


  void navigateToMyAccount(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyaccountView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }

  void navigateToMyOrders(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyOrderView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }

  void navigateToMyRequest(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyRequestView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }
    void navigateToAboutUs(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutUsView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }

  void navigateToContactUs(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ContactusView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }
    void navigateToPrivacy(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PrivacyView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }

  void navigateToTermsView(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TermsView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }


   void navigateToLogin(BuildContext context) async {    
    // Push the second screen and pass the user data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginView(),
      ),
    );

    if (result != null) {
      // Handle the returned result (pop data)
      print("Received Data: $result");
    }
  }


  
}