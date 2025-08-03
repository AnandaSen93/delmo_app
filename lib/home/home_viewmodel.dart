import 'package:delmo_app/notification/notification.dart';
import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {

  

  void navigateToNotification(BuildContext context) async {    

   // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);


    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationView()),
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
    }
  
}