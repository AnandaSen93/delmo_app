import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class RequestDetailsView extends StatefulWidget {
  const RequestDetailsView({super.key});

  @override
  State<RequestDetailsView> createState() => _RequestDetailsViewState();
}

class _RequestDetailsViewState extends State<RequestDetailsView> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child:Column(
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
                        "Submit Request",
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
          ],
        )
      ),
    );
  }
}