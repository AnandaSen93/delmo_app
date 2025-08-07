import 'package:delmo_app/drawer_menu/drawer.dart';
import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:delmo_app/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/src/google_maps_webservice/src/places.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:provider/provider.dart';

const String kGoogleApiKey =
    "AIzaSyDcNSunM6ae7MDFsc8uWM5G2PearKt_lx0"; // replace with your API key
final GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isDrawerOpen = false;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  void closeDrawer() {
    if (isDrawerOpen) {
      setState(() {
        isDrawerOpen = false;
      });
    }
  }

  TextEditingController _controller = TextEditingController();
  TextEditingController _apertment_controller = TextEditingController();

  String dropdownvalue = 'Package delivery';
  var dropdownItems = [
    'Package delivery',
    '1 Bedroom Apart.',
    '2 Bedroom Apart.',
    '3 - avove Bedroom Apart.',
    'Large size delivery',
  ];

  void _handleAutocomplete() async {
    final Prediction? p = await PlacesAutocomplete.show(
      context: context,
      apiKey: kGoogleApiKey,
      mode: Mode.overlay,
      language: "en",
      //components: [Component(Component.country, "in")], // optional filter
    );

    if (p != null) {
      final detail = await _places.getDetailsByPlaceId(p.placeId!);
      final name = detail.result.name;
      final _ = detail.result.geometry?.location.lat;
      final _ = detail.result.geometry?.location.lng;

      print(detail.result.geometry?.location.lat);
      print("object");
      print(detail.result.geometry?.location.lng);

      setState(() {
        _controller.text = name;
      });

      // ScaffoldMessenger.of(
      //   context,
      // ).showSnackBar(SnackBar(content: Text('Selected: $name ($lat, $lng)')));
    }
  }

  Future<void> _pickDate() async {
    final DateTime? _ = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.blue, // header background color
              onPrimary: Colors.white, // header text color
              onSurface: Colors.black, // body text color
            ),
          ),
          child: child!,
        );
      },
    );

    // if (picked != null && picked != selectedDate) {
    //   setState(() {
    //     selectedDate = picked;
    //   });
    // }
  }


   Future<void> _pickTime() async {
    final TimeOfDay? _ = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false), // optional
          child: child!,
        );
      },
    );

    // if (picked != null && picked != selectedTime) {
    //   setState(() {
    //     selectedTime = picked;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    final drawerWidth = MediaQuery.of(context).size.width * 0.7;
    final homeViewmodel = Provider.of<HomeViewmodel>(context);

    return PlatformScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Header Start
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
                            toggleDrawer();
                          },
                          icon: Icon(Icons.menu, color: theam_sky_blue_color),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Delmo",
                        style: textStyleForHeading.copyWith(color: white_color),
                      ),
                      Spacer(),
                      Container(
                        width: 50,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            homeViewmodel.navigateToNotification(context);
                          },
                          icon: Image.asset(
                            "assets/images/notification.png",
                            height: 20,
                            width: 20,
                            color: white_color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Header end
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      color: background_color,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Ship Your",
                            style: textStyleForphone.copyWith(
                              color: dark_grey_color,
                            ),
                          ),
                          Text(
                            "Package Safety",
                            style: textStyleForHeading.copyWith(
                              color: theam_dark_blue_color,
                            ),
                          ),
                          SizedBox(height: 20),

                          Container(
                            color: white_color,
                            width: double.infinity,
                            padding: EdgeInsets.only(
                              right: 20,
                              left: 20,
                              top: 20,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: box_border.copyWith(
                                    border: BoxBorder.all(
                                      color: theam_sky_blue_color,
                                    ),
                                  ),
                                  child: Text(
                                    "Pickup Location",
                                    style: textStyleForTextField.copyWith(
                                      color: theam_sky_blue_color,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 45,
                                  alignment: Alignment.centerLeft,
                                  decoration: box_border.copyWith(
                                    border: BoxBorder.all(
                                      color: theam_sky_blue_color,
                                    ),
                                  ),
                                  child: PlatformTextField(
                                    controller: _controller,
                                    readOnly: true,
                                    hintText:
                                        'Address....', 
                                       keyboardType: TextInputType.emailAddress,
                                    // iOS Specific Customization

                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField.copyWith(
                                            color: theam_sky_blue_color,
                                          ),
                                          // Text color on iOS
                                        ),

                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField.copyWith(
                                            color: theam_sky_blue_color,
                                          ),
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                'Address....', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 45,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: box_border.copyWith(
                                    border: BoxBorder.all(
                                      color: theam_sky_blue_color,
                                    ),
                                  ),
                                  child: PlatformTextField(
                                    controller: _apertment_controller,
                                    readOnly: true,
                                    keyboardType: TextInputType.emailAddress,
                                    onTap: _handleAutocomplete,
                                    hintText:
                                        'House/Apartment No.', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField.copyWith(
                                            color: theam_sky_blue_color,
                                          ),
                                          // Text color on iOS
                                        ),

                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField.copyWith(
                                            color: theam_sky_blue_color,
                                          ),
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                'House/Apartment No.', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 8,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: top_two_rounded.copyWith(
                                    color: theam_dark_blue_color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),

                          Container(
                            color: white_color,
                            width: double.infinity,
                            padding: EdgeInsets.only(
                              right: 20,
                              left: 20,
                              top: 20,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  decoration: box_border.copyWith(
                                    border: BoxBorder.all(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),
                                  child: Text(
                                    "Drop Location",
                                    style: textStyleForTextField.copyWith(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 45,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: box_border.copyWith(
                                    border: BoxBorder.all(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),
                                  child: PlatformTextField(
                                    controller: _controller,
                                    readOnly: true,
                                    hintText:
                                        'Address....', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField.copyWith(
                                            color: theam_dark_blue_color,
                                          ),
                                          // Text color on iOS
                                        ),

                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField.copyWith(
                                            color: theam_dark_blue_color,
                                          ),
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                'Address....', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 45,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: box_border.copyWith(
                                    border: BoxBorder.all(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),

                                  child: PlatformTextField(
                                    controller: _apertment_controller,
                                    readOnly: true,
                                    keyboardType: TextInputType.emailAddress,
                                    onTap: _handleAutocomplete,
                                    hintText:
                                        'House/Apartment No.', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField.copyWith(
                                            color: theam_dark_blue_color,
                                          ),
                                          // Text color on iOS
                                        ),

                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField.copyWith(
                                            color: theam_dark_blue_color,
                                          ),
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                'House/Apartment No.', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 8,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: top_two_rounded.copyWith(
                                    color: theam_dark_blue_color,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 15),
                          Text(
                            "Move Size",
                            style: textStyleForHeading.copyWith(
                              color: theam_dark_blue_color,
                            ),
                          ),
                          // dropdown
                          Container(
                            height: 90,
                            padding: EdgeInsets.all(20),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: box_border.copyWith(
                                color: white_color,
                                border: Border.all(
                                  color: theam_dark_blue_color,
                                ),
                              ),
                              child: Material(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: dropdownvalue,
                                    items: dropdownItems
                                        .map(
                                          (e) => DropdownMenuItem(
                                            child: Text(
                                              e,
                                              style: textStyleForTextField,
                                              maxLines: 1,
                                            ),
                                            value: e,
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownvalue = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 0,
                              bottom: 15,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: grey_color,
                                ),
                                Flexible(
                                  child: Container(
                                    height: 1,
                                    color: grey_color,
                                  ),
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
                            "Whether Packing Service Required",
                            style: textStyleForHeading.copyWith(
                              color: theam_dark_blue_color,
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  decoration: box_border.copyWith(
                                    border: Border.all(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        "None",
                                        style: textStyleForTextField,
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/images/rounded_check.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  height: 45,
                                  decoration: box_border.copyWith(
                                    border: Border.all(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        "Partial",
                                        style: textStyleForTextField,
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/images/rounded_uncheck.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  height: 45,
                                  decoration: box_border.copyWith(
                                    border: Border.all(
                                      color: theam_dark_blue_color,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        "Full",
                                        style: textStyleForTextField,
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/images/rounded_uncheck.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 0,
                              bottom: 15,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: grey_color,
                                ),
                                Flexible(
                                  child: Container(
                                    height: 1,
                                    color: grey_color,
                                  ),
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
                            "Preferred Pick-up time",
                            style: textStyleForHeading.copyWith(
                              color: theam_dark_blue_color,
                            ),
                          ),

                          Container(
                            height: 60,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text("Now", style: textStyleForTextField),
                                    SizedBox(width: 10),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/images/rounded_uncheck.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      "Later ",
                                      style: textStyleForTextField,
                                    ),
                                    SizedBox(width: 10),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/images/rounded_check.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date",
                                        style: textStyleForTextField,
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        height: 40,
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: theam_dark_blue_color,
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () { 
                                            _pickDate();
                                           },
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10),
                                              Text(
                                                "00/00/0000",
                                                style: textStyleForTextField,
                                              ),
                                              Spacer(),
                                              Image.asset(
                                                  "assets/images/calender.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Time",
                                        style: textStyleForTextField,
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        height: 40,
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: theam_dark_blue_color,
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () { 
                                            _pickTime();
                                           },
                                          child: Row(
                                            children: [
                                              SizedBox(width: 10),
                                              Text(
                                                "00:00",
                                                style: textStyleForTextField,
                                              ),
                                              Spacer(),
                                              Image.asset(
                                                  "assets/images/calender.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: gradient_button_decoration,
                              child: TextButton(
                                onPressed: () {
                                  homeViewmodel.navigateToSubmitRequest(context);
                                },
                                child: Text(
                                  "NEXT → ",
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
              ],
            ),

            if (isDrawerOpen)
              GestureDetector(
                onTap: closeDrawer,
                child: Container(color: const Color.fromRGBO(0, 0, 0, 0.2)),
              ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: isDrawerOpen ? 0 : -drawerWidth,
              top: 0,
              bottom: 0,
              child: SizedBox(
                width: drawerWidth,
                child: DrawerView(
                  onItemTap: () {
                    closeDrawer(); // close on menu item tap
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
