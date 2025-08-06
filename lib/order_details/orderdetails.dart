import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:latlong2/latlong.dart';

class OrderDetailsView extends StatefulWidget {
  const OrderDetailsView({super.key});

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: background_color,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //MAP
                    Container(
                      height: 200,
                      color: Colors.lightBlue,
                      child: FlutterMap(
                        options: MapOptions(
                          initialCenter: LatLng(22.5726, 88.3677), // Kolkata
                          initialZoom: 15,
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                            subdomains: ['a', 'b', 'c'],
                            userAgentPackageName:
                                'com.example.app', // Replace with your app's package
                          ),
                          PolylineLayer(
                            polylines: [
                              Polyline(
                                points: [
                                  LatLng(22.5726, 88.3639), // Start point
                                  LatLng(22.5726, 88.3725), // End point
                                ],
                                color: Colors.blue,
                                strokeWidth: 4.0,
                              ),
                            ],
                          ),
                          MarkerLayer(
                            markers: [
                              Marker(
                                point: LatLng(22.5726, 88.3639),
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.location_pin,
                                  size: 40,
                                  color: theam_dark_blue_color,
                                ),
                              ),
                              Marker(
                                point: LatLng(22.5726, 88.3725),
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.location_pin,
                                  size: 40,
                                  color: theam_dark_blue_color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    //MAP
                    Container(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 25),
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
                          Container(decoration: top_two_rounded, height: 5),
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
                              Text("Move Date", style: textStyleForTextField),
                              Spacer(),
                              Text("12/05/2022", style: textStyleForTextField),
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
                              Text("Move Time", style: textStyleForTextField),
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
                              Text("Move Size", style: textStyleForTextField),
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
                                "assets/images/price.png",
                                height: 20,
                                width: 20,
                                color: theam_sky_blue_color,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Bidding Charge",
                                style: textStyleForTextField,
                              ),
                              Spacer(),
                              Text("\$30", style: textStyleForTextField),
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
                          Text("Delivery Note", style: textStyleForTextField),
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
                      color: white_color,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            "Images",
                            style: textStyleForHeading.copyWith(
                              color: theam_dark_blue_color,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 10,
                            ),
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: box_border.copyWith(
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      color: white_color,
                                      boxShadow: [shadowBottom],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: box_border.copyWith(
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      color: white_color,
                                      boxShadow: [shadowBottom],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: box_border.copyWith(
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      color: white_color,
                                      boxShadow: [shadowBottom],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: box_border.copyWith(
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      color: white_color,
                                      boxShadow: [shadowBottom],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: box_border.copyWith(
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      color: white_color,
                                      boxShadow: [shadowBottom],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // images
                          SizedBox(height: 10),
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
                          Text("Payment Method", style: textStyleForHeading),
                          SizedBox(height: 10),
                          Text(
                            "Online",
                            style: textStyleForTextField.copyWith(
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.all(25),
                      child: Text(
                        "Delivery Person",
                        style: textStyleForHeading,
                      ),
                    ),

                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: DeliveryPersonCard(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: 3,
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // backBtn
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  // back
                  Navigator.pop(context);
                },
                icon: Container(
                  height: 36,
                  width: 36,

                  decoration: BoxDecoration(
                    color: white_color,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Icon(Icons.arrow_back, color: theam_sky_blue_color),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryPersonCard extends StatelessWidget {
  const DeliveryPersonCard({super.key});

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
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("John Deo", style: textStyleForTextField),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("Ride Code : ", style: textStyleForTextField),
                            Spacer(),
                            Text("8963", style: textStyleForTextField),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),

                Container(
                  width: 100,
                  padding: EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/phone_call.png"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
