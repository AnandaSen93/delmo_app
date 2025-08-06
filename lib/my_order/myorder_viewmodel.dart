import 'package:delmo_app/order_details/orderdetails.dart';
import 'package:flutter/material.dart';

class MyorderViewmodel extends ChangeNotifier {

      void navigateToOrderDetails(BuildContext context) async {    

   // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);


    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderDetailsView())
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
    }
  
}