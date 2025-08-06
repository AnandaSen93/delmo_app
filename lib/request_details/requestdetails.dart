import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/image_class.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:delmo_app/request_details/requestdetails_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';

class RequestDetailsView extends StatefulWidget {
  const RequestDetailsView({super.key});

  @override
  State<RequestDetailsView> createState() => _RequestDetailsViewState();
}

class _RequestDetailsViewState extends State<RequestDetailsView> {
  @override
  Widget build(BuildContext context) {
    final requestdetailsViewmodel = Provider.of<RequestdetailsViewmodel>(context);
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
                    "Request Details",
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

            // Scrollview
            Expanded(
              child: Container(
                color: background_color,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 203,
                          child: ImageSlideshow(
                            indicatorColor: theam_dark_blue_color,
                            indicatorRadius: 5,
                            onPageChanged: (value) {},
                            autoPlayInterval: 3000,
                            isLoop: true,
                            children: [
                              Image.asset(
                                'assets/images/banner.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'assets/images/banner.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'assets/images/banner.png',
                                fit: BoxFit.fill,
                              ),
                            ],

                            //  homeViewModel
                            //         .homeModel.responseData?.slidingBanner
                            //         ?.map((imageUrl) {
                            //       return ClipRRect(
                            //         borderRadius: BorderRadius.circular(12),
                            //         child: CustomNetworkImage(
                            //           imageUrl: imageUrl.image
                            //               .toString(), // Convert String to Widget
                            //           fit: BoxFit.cover,
                            //           width: double.infinity,
                            //         ),
                            //       );
                            //     }).toList() ??
                            //     [],
                          ),
                        ),

                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 25,
                          ),
                          color: white_color,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup Location",
                                style: textStyleForphone.copyWith(
                                  color: grey_color,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "7197 Wilson DriveCompton, CA 90221",
                                style: textStyleForTextField,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Drop Location",
                                style: textStyleForphone.copyWith(
                                  color: grey_color,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "7197 Wilson DriveCompton, CA 90221",
                                style: textStyleForTextField,
                              ),
                              SizedBox(height: 17),
                              Container(decoration: top_two_rounded, height: 8),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                        Container(
                          padding: EdgeInsets.all(25),
                          color: white_color,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/distance.png",
                                    height: 20,
                                    width: 20,
                                    color: theam_sky_blue_color,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Estimated Distance",
                                    style: textStyleForTextField,
                                  ),
                                  Spacer(),
                                  Text("60.7 km", style: textStyleForTextField),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/date.png",
                                    height: 20,
                                    width: 20,
                                    color: theam_sky_blue_color,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Move Date",
                                    style: textStyleForTextField,
                                  ),
                                  Spacer(),
                                  Text(
                                    "12/05/2022",
                                    style: textStyleForTextField,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/time.png",
                                    height: 20,
                                    width: 20,
                                    color: theam_sky_blue_color,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Move Time",
                                    style: textStyleForTextField,
                                  ),
                                  Spacer(),
                                  Text("9:00 am", style: textStyleForTextField),
                                ],
                              ),

                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/size.png",
                                    height: 20,
                                    width: 20,
                                    color: theam_sky_blue_color,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Move Size",
                                    style: textStyleForTextField,
                                  ),
                                  Spacer(),
                                  Text("Studio", style: textStyleForTextField),
                                ],
                              ),

                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/service.png",
                                    height: 20,
                                    width: 20,
                                    color: theam_sky_blue_color,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Packing Service",
                                    style: textStyleForTextField,
                                  ),
                                  Spacer(),
                                  Text("None", style: textStyleForTextField),
                                ],
                              ),

                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/status.png",
                                    height: 20,
                                    width: 20,
                                    color: theam_sky_blue_color,
                                  ),
                                  SizedBox(width: 10),
                                  Text("Status", style: textStyleForTextField),
                                  Spacer(),
                                  Text(
                                    "Bid Received",
                                    style: textStyleForTextField.copyWith(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                        Container(
                          padding: EdgeInsets.all(25),
                          color: white_color,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery Note",
                                style: textStyleForTextField,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Aliquam porttitor laoreet quam, nec semper ex convallis rutrum. Pellentesque dapibus odio lobortis, imperdiet dui at, pulvinar nibh. Curabitur a tortor ",
                                style: textStyleForTextField,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                           Container(
                          padding: EdgeInsets.all(25),
                          color: white_color,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Payment Method",
                                style: textStyleForHeading,
                              ),
                              SizedBox(height: 10),
                             Text(
                                    "Online",
                                    style: textStyleForTextField.copyWith(
                                      color: Colors.green,
                                    ),
                             )
                            ],
                          ),
                        ),

                        Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.all(25),
                          child: Text(
                                "Bidding Lists",
                                style: textStyleForHeading,
                              ),
                        ),

                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index){
                            return GestureDetector(
                              onTap: (){
                                requestdetailsViewmodel.navigateTobidDetails(context);
                              },
                              child: BidlistView());
                          }, 
                          separatorBuilder: (context, index){
                            return SizedBox(height: 10);
                          }, 
                          itemCount: 3),

                          SizedBox(height: 20),








                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Scrollview
          ],
        ),
      ),
    );
  }
}


class BidlistView extends StatelessWidget {
  const BidlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
      color: white_color,
      child: Column(
        children: [
          Container(
            child: Row(
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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 25,right: 25,top:10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("John Deo",style: textStyleForTextField),
                         SizedBox(height: 10),
                        Row(
                         children: [
                        Text("Delivery Charge Bidden : ",style: textStyleForTextField),
                        Spacer(),
                        Text("\$60",style: textStyleForTextField),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Rating : ",style: textStyleForTextField),
                        Spacer(),
                        Text("⭐ 3.5",style: textStyleForTextField),
                      ],
                    )
                      ],
                    ),
                  ),
                )

                


              ],

            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 5,
            decoration: top_two_rounded.copyWith(color: theam_dark_blue_color),
          )
        ],        
      ),
    );
  }
}