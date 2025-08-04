import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ContactusView extends StatefulWidget {
  const ContactusView({super.key});

  @override
  State<ContactusView> createState() => _ContactusViewState();
}

class _ContactusViewState extends State<ContactusView> {

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
                        "Contact Us",
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
              child:
               Container(
                color: background_color,
                padding: EdgeInsets.only(top: 20,bottom: 20),
                child: SingleChildScrollView(
                  child: Container(
                    color: white_color,
                    padding: EdgeInsets.only(top:15,left:15,right: 15),
                    child: Column(
                      children: [
                    
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
                                          'Subject', // Common hint text (can override per platform)
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
                                              hintText: 'Subject',
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
                    
                                  Container(
                                    height: 200,
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
                                          'Message', // Common hint text (can override per platform)
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
                                              hintText: 'message',
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
                      
                                  SizedBox(height: 25),
                    
                                  Container(
                                    height: 8,
                                    decoration: top_two_rounded.copyWith(color: theam_dark_blue_color),
                                  )
                    
                    
                       ],
                     ),
                  ),
                  ),
                ),
              ),

              Container(
                height: 80,
                color: background_color,
                padding: EdgeInsets.all(10),
                child: TextButton(onPressed: (){

                }, child: Container(
                  decoration: gradient_button_decoration,
                   width: double.infinity,
                   height: double.infinity,
                   alignment: Alignment.center,
                  child: Text("SEND → ", style: textStyleForButton),
                )),
              )







          ],
        )
      ),
    );
  }
}