import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';


import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

class HomepageScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  //TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Nestopia'),
          centerTitle: true,
        ),
        
                    body: SizedBox(
                      
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 14.v),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 320.v, // Adjust height as needed
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: 'assets/images/img_image_16.png', // Replace with your image path
                              height: 320.v,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Center(
                              child: Text(
                                'Welcome to Nestopia!',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildSignInButton(context),
                          _buildSaved(context),
                          _buildCreateAccountButton(context),
                        ],
                      ),
                      SizedBox(height: 32.v),
                      _buildRentRoom(context),
                      SizedBox(height: 40.v),
                      _buildPG(context),
                      SizedBox(height: 39.v),
                      _buildFindRoommate(context),
                      SizedBox(height: 43.v),
                      _buildListingToFindRoommate(context),
                      SizedBox(height: 43.v),
                      _buildListProperty(context),
                      SizedBox(height: 41.v),
                      _buildBlogs(context),
                      SizedBox(height: 47.v),
                      // Add space between Blogs button and image
                      Stack(
                        children: [
                          CustomImageView(
                            imagePath: 'assets/images/Bo.webp', // Replace with your image path
                            height: 600.v,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: _buildStartBookingButton(context),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 57.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 1.v, bottom: 62.v),
                                child: Text("               company",
                                    style: theme.textTheme.titleMedium)),
                            Padding(
                                padding: EdgeInsets.only(right: 50.h),
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text("               Home",
                                          style:
                                          theme.textTheme.bodyLarge),
                                      SizedBox(height: 11.v),
                                      Text("               about us",
                                          style:
                                          theme.textTheme.bodyLarge),
                                      SizedBox(height: 12.v),
                                      Text("               our team",
                                          style:
                                          theme.textTheme.bodyLarge)
                                    ]))
                          ]),
                      SizedBox(height: 44.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 70.h),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 1.v, bottom: 32.v),
                                        child: Text("privacy",
                                            style: theme
                                                .textTheme.titleMedium)),
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 40.h),
                                        child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "terms of service",
                                                  style: theme.textTheme
                                                      .bodyLarge),
                                              SizedBox(height: 13.v),
                                              Text(
                                                  "privacy policy",
                                                  style: theme.textTheme
                                                      .bodyLarge)
                                            ]))
                                  ]))),
                      SizedBox(height: 47.v),
                      Text("Stay up to date",
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 8.v),
                      Text("Be the first to know",
                          style: theme.textTheme.bodyLarge),
                      //SizedBox(height: 50.v),
                      //_buildSubscribe(context),
                      SizedBox(height: 35.v),
                      Text("Contact number:1234567890",
                          style: CustomTextStyles.titleMediumBlack900),
                      //SizedBox(height: 51.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 121.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLink,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize),
                                CustomImageView(
                                    imagePath:'assets\images\img_eva_facebook_fill.svg',
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(left: 12.h)),
                                CustomImageView(
                                    imagePath:'assets\images\img_eva_twitter_fill.svg',
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(left: 12.h))
                              ]))),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 121.h),
                              child: Text("Nestopia 2023",
                                  style: CustomTextStyles.titleMediumBlack900,)))
                      // Add other UI widgets as needed
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    


  Widget _buildSaved(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 60.h,
        text: "Saved",
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.savedScreen);
      },
    );

  }
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 97.h,
      text: "Sign in",
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.logInScreen);
      },
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 135.h,
      text: "Create Account",
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.createAccountScreen);
      },
    );
  }



  Widget _buildRentRoom(BuildContext context) {
    return CustomElevatedButton(
      height: 75.v,
      text: "Rent",
      margin: EdgeInsets.only(left: 14.h, right: 18.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.rentScreen);
      },
    );
  }

  Widget _buildPG(BuildContext context) {
    return CustomElevatedButton(
      height: 75.v,
      text: "PG",
      margin: EdgeInsets.only(left: 14.h, right: 18.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.pgScreen);
      },
    );
  }

  Widget _buildFindRoommate(BuildContext context) {
    return CustomElevatedButton(
      height: 75.v,
      text: "Find a Roomate",
      margin: EdgeInsets.only(left: 14.h, right: 18.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.filtersScreen);
      },
    );
  }
  Widget _buildListingToFindRoommate(BuildContext context) {
    return CustomElevatedButton(
      height: 75.v,
      text: "Listing to find a Roomate",
      margin: EdgeInsets.only(left: 14.h, right: 18.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.postProfileScreen);
      },
    );
  }
  Widget _buildListProperty(BuildContext context) {
    return CustomElevatedButton(
      height: 75.v,
      text: "List Property",
      margin: EdgeInsets.only(left: 14.h, right: 18.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.listPropertyScreen);
      },
    );
  }
  

  Widget _buildBlogs(BuildContext context) {
    return CustomElevatedButton(
      height: 75.v,
      text: "Blogs",
      margin: EdgeInsets.only(left: 14.h, right: 18.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.blogPageScreen);
      },
    );
  }
  Widget _buildStartBookingButton(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      width: 250.h,
      text: "Start Booking",
      onPressed: () {
        Navigator.pushNamed(context,AppRoutes.filtersScreen); // Navigate to filtersScreen
      },
    );
  }
}

