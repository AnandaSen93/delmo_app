import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class MyRequestView extends StatefulWidget {
  const MyRequestView({super.key});

  @override
  State<MyRequestView> createState() => _MyRequestViewState();
}

class _MyRequestViewState extends State<MyRequestView> {
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

            Expanded(child: 
            ListView.separated(
              itemCount: 10,  
              separatorBuilder: (context, index){
                return SizedBox(height:10);
              },             
              itemBuilder: (context, index){
                return MyRequestCardView();
              }, 
              ))
          ],
        )
      ),
    );
  }



}


class MyRequestCardView extends StatelessWidget {
  const MyRequestCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right:10),
      child: Container(
        //height: 100,
        padding: EdgeInsets.only(left: 10, right:10, top: 10),
        decoration: box_border.copyWith(
          color:white_color,
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
                   
                    decoration: BoxDecoration(
                       color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    padding: EdgeInsets.all(2),
                    child: AspectRatio(aspectRatio: 1,
                    child: Image.asset("assets/images/default_image.png"),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child:
                     Container(
                      alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pickup Location",
                        style: textStyleForName,
                        ),
                        Text("7197 Wilson DriveCompton, CA 90221",
                        style: textStyleForName,),
                        Text("Drop Location",
                        style: textStyleForName,),
                        Text("7197 Wilson DriveCompton, CA 90221",
                        style: textStyleForName,),
                        Row(
                          children: [
                             Text("Pickup Location",
                        style: textStyleForName,),
                           Text(":",
                        style: textStyleForName,),
                          ],
                        ),
                        Row(children: [
                           Text("Pickup Location",
                        style: textStyleForName,),
                           Text(":",
                        style: textStyleForName,),
                           Text("Drop Location",
                        style: textStyleForName,),
                        ],),
                        Row(children: [
                           Text("Pickup Location",
                        style: textStyleForName,),
                           Text(":",
                        style: textStyleForName,),
                           Text("Drop Location",
                        style: textStyleForName,),
                        ],)
                        ,Row(children: [
                           Text("Pickup Location",
                        style: textStyleForName,),
                           Text(":",
                        style: textStyleForName,),
                           Text("Drop Location",
                        style: textStyleForName,),
                        ],)

                      ],
                    ),
                  ))
                ],
              ),
           
            SizedBox(height: 5),
            Container(
            decoration: top_two_rounded.copyWith(color: theam_dark_blue_color),
            width: double.infinity,
            height: 8,
          )
          ],
        )
      ),     

    );
  }
}