import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class BidDetailsView extends StatefulWidget {
  const BidDetailsView({super.key});

  @override
  State<BidDetailsView> createState() => _BidDetailsViewState();
}

class _BidDetailsViewState extends State<BidDetailsView> {
  @override
  Widget build(BuildContext context) {
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
                    "Bid Details",
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

            //

            // scrollview
            Expanded(
              child: Container(
                color: background_color,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    color: white_color,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Container(
                          width: 200,
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
                        SizedBox(height: 15),

                        Text(
                          "Samion Thomas",
                          style: textStyleForSubHeading.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                              Flexible(
                                child: Container(height: 1, color: grey_color),
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Delivery Charge Bidden",
                          style: textStyleForTextField,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "\$50",
                          style: textStyleForSubHeading.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                              Flexible(
                                child: Container(height: 1, color: grey_color),
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                            ],
                          ),
                        ),

                        Text(
                          "Car and Fleet Size",
                          style: textStyleForTextField,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "2",
                          style: textStyleForSubHeading.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                              Flexible(
                                child: Container(height: 1, color: grey_color),
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                            ],
                          ),
                        ),

                        Text(
                          "Insurance Package ",
                          style: textStyleForTextField,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Normal Comprehensive",
                          style: textStyleForSubHeading.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                              Flexible(
                                child: Container(height: 1, color: grey_color),
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                color: grey_color,
                              ),
                            ],
                          ),
                        ),

                        Text("Rating", style: textStyleForTextField),
                        SizedBox(height: 5),
                        Text(
                          "⭐ 3.5",
                          style: textStyleForSubHeading.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),
                        SizedBox(height: 15),

                        Container(
                          height: 5,
                          decoration: top_two_rounded.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),

                        Container(
                          color: background_color,
                          padding: EdgeInsets.all(20),
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: gradient_button_decoration,
                              child: Text(
                                "Accept Bid → ",
                                style: textStyleForButton,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // scrollview
          ],
        ),
      ),
    );
    ;
  }
}
