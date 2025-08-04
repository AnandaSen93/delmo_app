import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
                        "Notifications",
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

            // List
            Expanded(child: Container(
              color: background_color,
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index){
                  return SizedBox(height: 10);
                },
                itemBuilder: (context, index){
                  return Container(
                    color: white_color,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      children: [
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet quis condimentum duis rhoncus risus cras commodo a. Aliquet praesent ut ut hendrerit sed ",
                          style: textStyleForTextField,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text("23:25",
                          textAlign: TextAlign.right,
                          style: textStyleForTextField.copyWith(color: theam_sky_blue_color),),
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: top_two_rounded.copyWith(color: theam_dark_blue_color),
                          height: 8,
                        )
                      ],
                    ),
                  );

                }, 
                 
                ),
            )) 
            // List
          ],
        )
      ),
    );
  }
}