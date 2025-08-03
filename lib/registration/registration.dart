import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final FocusNode _focusNode = FocusNode();
  void _toggleKeyboard() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus(); // Hide keyboard
    } else {
      FocusScope.of(context).requestFocus(_focusNode); // Show keyboard
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              height: 50,
              color: theam_dark_blue_color,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: theam_sky_blue_color),
                    ),
                  ),
                  SizedBox(width: 80,),
                  Text("Registration",
                       style: textStyleForHeading.copyWith(color: white_color),
                  ),
                  Spacer(),
                ],
              ),
            ),

            // Header
            Expanded(
              child: GestureDetector(
                onTap: (){
                  _toggleKeyboard();
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Profile image
                      Stack(
                        children: [ Container(
                          width: double.infinity,
                          height: 250,
                          color: background_color,
                          padding: EdgeInsets.all(25),
                          child: Center(
                            child: Container(
                              decoration: circleWithBorder,
                              clipBehavior: Clip.hardEdge,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset(
                                  "assets/images/default_image.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 90,
                          child: IconButton(onPressed: (){
                
                          }, icon: Image.asset(
                            "assets/images/camera.png",
                            height: 35,
                            width: 35,
                            )),
                        )
                        ]
                      ),
                
                      // Profile image
                
                      // Form
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                keyboardType: TextInputType.name,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'First Name', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'First Name',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                keyboardType: TextInputType.name,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'Last Name', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'Last Name',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],            
                                keyboardType: TextInputType.phone,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'Phone', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'Phone',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                               
                                keyboardType: TextInputType.emailAddress,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'Email', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                               
                                keyboardType: TextInputType.emailAddress,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'Address', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'Address',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                keyboardType: TextInputType.phone,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'Zip Code', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'Zip Code',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                keyboardType: TextInputType.emailAddress,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'State', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'State',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                keyboardType: TextInputType.name,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'City', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'City',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 15),
                            // Name
                
                            // Name
                            Container(
                              height: 45,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                              child: PlatformTextField(
                                //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                                // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                keyboardType: TextInputType.name,
                                // minLines: 4,         // Minimum height (optional)
                                // maxLines: null, // Keyboard optimized for name input
                                onSubmitted: (_) => _toggleKeyboard(),
                                hintText:
                                    'Country', // Common hint text (can override per platform)
                                // iOS Specific Customization
                                cupertino: (context, platform) => CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style:
                                      textStyleForTextField, // Text color on iOS
                                ),
                
                                // Android Specific Customization
                                material: (context, platform) =>
                                    MaterialTextFieldData(
                                      decoration: InputDecoration(
                                        hintText: 'Country',
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        filled: false, // No background fill
                                        contentPadding: EdgeInsets.all(10),
                                        // Optional: reduce padding
                                      ),
                                      style: textStyleForTextField,
                                    ),
                              ),
                            ),
                
                            SizedBox(height: 20),
                
                            // Name
                            Container(
                              height: 10,
                              clipBehavior: Clip.antiAlias,
                              decoration: top_two_rounded.copyWith(color: theam_dark_blue_color),
                            ),                      
                          ],
                        ),
                      ),
                
                        // Submit
                             Container(
                              color:background_color,
                              padding: EdgeInsets.only(left: 15,right: 15,top:25, bottom: 25),
                               child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: gradient_button_decoration,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "SUBMIT → ",
                                      style: textStyleForButton,
                                    ),
                                  ),
                                ),
                             ),
                
                            // Submit
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
