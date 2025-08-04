import 'package:delmo_app/request_details/requestdetails.dart';
import 'package:flutter/material.dart';

class MyrequestViewmodel extends ChangeNotifier {
  


   

  void navigateToRequestDetails(BuildContext context) async {    

   // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);


    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RequestDetailsView()),
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
    }


}