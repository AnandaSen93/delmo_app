import 'package:delmo_app/my_account_edit/myaccountedit.dart';
import 'package:flutter/material.dart';

class MyaccountViewmodel extends ChangeNotifier {


    void navigateToEditAccount(BuildContext context) async {    

   // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);


    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyAccountEditView())
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
    }

}