import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:delmo_app/my_request/myrequest_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';

class MyRequestView extends StatefulWidget {
  const MyRequestView({super.key});

  @override
  State<MyRequestView> createState() => _MyRequestViewState();
}

class _MyRequestViewState extends State<MyRequestView> {
  @override
  Widget build(BuildContext context) {
     final myrequestViewmodel = Provider.of<MyrequestViewmodel>(context);
    return PlatformScaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Header Start
            Container(
              height: 50,
              color: theam_dark_blue_color,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        // back
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: theam_sky_blue_color),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "My Request",
                    style: textStyleForHeading.copyWith(color: white_color),
                  ),
                  Spacer(),
                  Container(
                    width: 50,
                    // child: IconButton(
                    //   padding: EdgeInsets.zero,
                    //   onPressed: () {
                    //     // navigate to notification page
                    //   },
                    //   icon: Image.asset(
                    //     "assets/images/notification.png",
                    //     height: 20,
                    //     width: 20,
                    //     color: white_color,
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),

            //Header End
            Expanded(
              child: Container(
                color: background_color,
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 15);
                  },
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        myrequestViewmodel.navigateToRequestDetails(context);
                      },
                      child: MyRequestCardView());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyRequestCardView extends StatelessWidget {
  const MyRequestCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        //height: 100,
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        decoration: box_border.copyWith(
          color: white_color,
          border: Border.all(color: Colors.transparent),
          boxShadow: [shadowBottom],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/default_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pickup Location",
                          style: textStyleForphone.copyWith(color: grey_color),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "7197 Wilson DriveCompton, CA 90221",
                          style: textStyleForTextField,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Drop Location",
                          style: textStyleForphone.copyWith(color: grey_color),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "7197 Wilson DriveCompton, CA 90221",
                          style: textStyleForTextField,
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 20,
                                  color: theam_dark_blue_color,
                                ),
                                Text(
                                  "12/12/2022",
                                  style: textStyleForTextField,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.punch_clock,
                                  size: 20,
                                  color: theam_dark_blue_color,
                                ),
                                Text("9:00 AM", style: textStyleForTextField),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Move Size :", style: textStyleForTextField),
                            Text("Studio", style: textStyleForTextField),
                          ],
                        ),

                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Packing Service :",
                              style: textStyleForTextField,
                            ),
                            Text("None", style: textStyleForTextField),
                          ],
                        ),
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Status :", style: textStyleForTextField),
                            Text(
                              "Bid Received",
                              style: textStyleForTextField.copyWith(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),
            Container(
              decoration: top_two_rounded.copyWith(
                color: theam_dark_blue_color,
              ),
              width: double.infinity,
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
