import 'package:delmo_app/bid_details/biddetails.dart';
import 'package:flutter/material.dart';

class RequestdetailsViewmodel extends ChangeNotifier {
  void navigateTobidDetails(BuildContext context) async {
    // Provider.of<ProductDetailsViewModel>(context, listen: false).selectedProductID(ProductID);

    // Push the second screen and pass the user data
    final result = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BidDetailsView()),
    );

    // Handle the returned result (pop data)
    print("Received Data: $result");
  }
}
