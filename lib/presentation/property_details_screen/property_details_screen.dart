import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_icon_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PropertyDetailsScreen extends StatelessWidget {
  PropertyDetailsScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

 //
  // TextEditingController emailEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(

              title: Text('Nestopia'),
              centerTitle: true,
              actions: [
                AppbarTrailingImage(
                  onTapNestopia: () {
                    Navigator.pushNamed(context, '/homepage_screen'); // Navigate to homepage
                  },
                ),
              ],
            ),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildFirstScreen1(context),
                          SizedBox(height: 24.v),
                          // _buildSaveButton(context),
                          // SizedBox(height: 18.v),
                          Text("Pearl River",
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 16.v),
                          Text("Suryanagr,Bengaluru",
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 28.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgFluentBed24FilledGray900,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("2 bedroom",
                                        style: CustomTextStyles
                                            .bodyMediumGray900)),
                                Container(
                                    width: 64.h,
                                    margin: EdgeInsets.only(left: 20.h),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFaSolidBathGray900,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              margin:
                                              EdgeInsets.only(bottom: 1.v)),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(left: 8.h),
                                              child: Text("2 bath",
                                                  style: CustomTextStyles
                                                      .bodyMediumGray900))
                                        ]))
                              ]),
                          SizedBox(height: 6.v),
                          SizedBox(
                              width: 262.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                        "500 sq.ft | City view  |  3rd floor  |  Elevator\n",
                                        style: theme.textTheme.bodyMedium),
                                    TextSpan(
                                        text: "Rs. 34490 / Month ",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 49.v),
                          _buildBookNowButton(context),
                          SizedBox(height: 41.v),
                          Text("Desription",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 9.v),
                          Container(
                              width: 341.h,
                              margin: EdgeInsets.only(left: 16.h, right: 17.h),
                              child: Text(
                                  "A truly global city, Bangalore has long been considered a cutting-edge metropolis and hub for culture, style and finance. With each borough, Koramangala and neighborhood of Bangalore sporting its own vibe and lifestyle advantages, it can be downright difficult to settle on where to look for a furnished apartment in Bangalore . Whether you’re a digital nomad looking for a studio apartment in Bangalore or just seeking a month to month rental in Bangalore, The Metropolitan Manor has you covered.",
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumGray900
                                      .copyWith(height: 1.29))),
                          SizedBox(height: 79.v),
                          Text("Amenities",
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 39.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text("1. TV",
                                              style: theme.textTheme.bodyLarge),
                                          SizedBox(height: 4.v),
                                          Text("Flatscreen TV",
                                              style: theme.textTheme.bodySmall)
                                        ]),
                                    CustomImageView(
                                        imagePath: 'assets/images/tv.jpg',
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 3.v, bottom: 4.v))
                                  ])),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "2. Fireplace",
                                  image: 'assets/images/fire.png')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "3. Phone",
                                  image: 'assets/images/phone.webp')),
                          SizedBox(height: 8.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text("4.Work desk",
                                          style: theme.textTheme.bodyLarge),
                                      SizedBox(height: 5.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("With computer",
                                              style: theme.textTheme.bodySmall))
                                    ]),
                                CustomImageView(
                                    imagePath:
                                    'assets/images/work desk.png',
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 87.h, top: 3.v, bottom: 5.v))
                              ]),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "5. Fridge",
                                  image: 'assets/images/fridge.png')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "6. Kettle",
                                  image: 'assets/images/kettle.jpg')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "7. Coffee Maker",
                                  image: 'assets/images/coffee-machine-icon.jpg')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "8. Dishes",
                                  image: 'assets/images/dishes.png')),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "9. Washing Machine",
                                  image: 'assets/images/washing machine.jpg')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "10. Dryer",
                                  image:'assets/images/dryer.png')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "11. Iron",
                                  image: 'assets/images/iron.webp')),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 87.h),
                              child: _buildPhoneRow(context,
                                  text: "12. Wardrobe",
                                  image: 'assets/images/wardrobe.png')),
                          SizedBox(height: 80.v),
                          Text("Location",
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 39.v),
                          _buildMap(context),
                          SizedBox(height: 83.v),
                          Text("Policy detail",
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 37.v),
                          Text("House rules",
                              style: CustomTextStyles.titleLargeBlack900),
                          // SizedBox(height: 15.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 100.h),
                          //         child: Row(children: [
                          //           CustomImageView(
                          //               imagePath: ImageConstant
                          //                   .imgEvaClockFillBlack900,
                          //               height: 20.adaptSize,
                          //               width: 20.adaptSize),
                          //           Padding(
                          //               padding: EdgeInsets.only(left: 12.h),
                          //               child: Text("Checkin time:9 am",
                          //                   style: theme.textTheme.bodyLarge))
                          //         ]))),
                          // SizedBox(height: 7.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 100.h),
                          //         child: Row(children: [
                          //           CustomImageView(
                          //               imagePath: ImageConstant
                          //                   .imgEvaClockFillBlack900,
                          //               height: 20.adaptSize,
                          //               width: 20.adaptSize),
                          //           Padding(
                          //               padding: EdgeInsets.only(left: 12.h),
                          //               child: Text("Checkout time",
                          //                   style: theme.textTheme.bodyLarge))
                          //         ]))),
                          // SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 100.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgFoundationNoSmoking,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(bottom: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("  No smoking",
                                            style: theme.textTheme.bodyLarge))
                                  ]))),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 100.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                        ImageConstant.imgCloseBlack900,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(bottom: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("  No pets",
                                            style: theme.textTheme.bodyLarge))
                                  ]))),
                          SizedBox(height: 6.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgBxBxsParty,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 1.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text("No parties or events",
                                        style: theme.textTheme.bodyLarge))
                              ]),
                          SizedBox(height: 20.v),
                          Text("Cancellation Policy",
                              style: CustomTextStyles.titleLargeBlack900),
                          SizedBox(height: 13.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                    ImageConstant.imgEvaCloseCircleFill,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 22.v)),
                                Container(
                                    width: 207.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                        "Free Cancellation up to 24hrs \nbefore moving in",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(height: 1.25)))
                              ]),
                          SizedBox(height: 19.v),
                          Text("Health & Safty",
                              style: CustomTextStyles.titleLargeBlack900),
                          SizedBox(height: 13.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEvaShieldFill,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 22.v)),
                                Container(
                                    width: 217.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                        "Cleaner in accordance with our \nCOVID safe cleaning policy",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(height: 1.25)))
                              ]),
                          SizedBox(height: 50.v),
                          // _buildEmailStack(context)
                        ]))))));
  }

  /// Section Widget
  /*PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgCalendar,
            margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapCalendar(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v))
        ],
        styleType: Style.bgFill);
  }*/

  /// Section Widget
  Widget _buildFirstScreen(BuildContext context) {
    return CustomElevatedButton(
        height: 26.v,
        width: 47.h,
        text: "1/10",
        buttonStyle: CustomButtonStyles.fillOnPrimary,
        buttonTextStyle: CustomTextStyles.bodyMediumGray900,
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildFirstScreen1(BuildContext context) {
    return SizedBox(
        height: 440.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: 'assets/images/pearl_homes.jpg',
              height: 440.v,
              width: 375.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL22,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowDown)),
                        SizedBox(height: 338.v),
                        _buildFirstScreen(context)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        height: 39.v,
        width: 120.h,
        text: "Save ",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 19.v,
                width: 20.h)),
        buttonStyle: CustomButtonStyles.fillPrimaryTL19);
  }

  /// Section Widget
  Widget _buildBookNowButton(BuildContext context) {
    return CustomElevatedButton(
        width: 140.h,
        text: "Book Now",
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapBookNowButton(context);
        });
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
        height: 330.v,
        width: double.maxFinite,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }



  /// Section Widget
  // Widget _buildSubscribeButton(BuildContext context) {
  //   return CustomElevatedButton(
  //       width: 134.h,
  //       text: "Subscribe",
  //       buttonStyle: CustomButtonStyles.fillPrimary);
  // }

  /// Section Widget
  Widget _buildEmailStack(BuildContext context) {
    return SizedBox(
        height: 753.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.white,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 98.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 83.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Company",
                                      style: theme.textTheme.titleMedium)),
                              Padding(
                                  padding: EdgeInsets.only(left: 40.h),
                                  child: Text("Home",
                                      style: theme.textTheme.bodyLarge))
                            ]))),
                    SizedBox(height: 10.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 87.h),
                            child: Text("About us",
                                style: theme.textTheme.bodyLarge))),
                    SizedBox(height: 12.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 85.h),
                            child: Text("Our team",
                                style: theme.textTheme.bodyLarge))),
                    SizedBox(height: 19.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 64.v),
                              child: Text("Guests",
                                  style: theme.textTheme.titleMedium)),
                          Padding(
                              padding: EdgeInsets.only(left: 40.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Blog",
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 11.v),
                                    Text("FAQ",
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 10.v),
                                    Text("Career",
                                        style: theme.textTheme.bodyLarge)
                                  ]))
                        ]),
                    SizedBox(height: 19.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 35.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 1.v, bottom: 32.v),
                                      child: Text("Privacy",
                                          style: theme.textTheme.titleMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 40.h),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text("Terms of Service",
                                                style:
                                                theme.textTheme.bodyLarge),
                                            SizedBox(height: 13.v),
                                            Text("Privacy Policy",
                                                style:
                                                theme.textTheme.bodyLarge)
                                          ]))
                                ]))),
                    SizedBox(height: 39.v),
                    Text("Stay up to date", style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    Container(
                        width: 266.h,
                        margin: EdgeInsets.only(left: 38.h, right: 35.h),
                        child: Text(
                            "Be the first to know about our newest apartments",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(height: 1.25))),
                    SizedBox(height: 17.v),
                    // _buildEmailEditText(context),
                    // SizedBox(height: 20.v),
                    // _buildSubscribeButton(context),
                    // SizedBox(height: 40.v),
                    Text("Contact number: 02033074477",
                        style: CustomTextStyles.bodyMediumGray900),
                    SizedBox(height: 12.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLink,
                          height: 32.adaptSize,
                          width: 32.adaptSize),
                      CustomImageView(
                          imagePath: ImageConstant.imgEvaFacebookFill,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.only(left: 12.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgEvaTwitterFill,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.only(left: 12.h))
                    ]),
                    SizedBox(height: 13.v),
                    Text("© 2021 Flex Living",
                        style: CustomTextStyles.bodyMediumGray900)
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 44.v,
              width: 46.h,
              alignment: Alignment.topCenter,
              onTap: () {
                onTapImgCalendar(context);
              })
        ]));
  }

  /// Common widget
  Widget _buildPhoneRow(
      BuildContext context, {
        required String text,
        required String image,
      }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
          child: Text(text,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.gray900))),
      CustomImageView(
          imagePath: image, height: 32.adaptSize, width: 32.adaptSize)
    ]);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the checkoutPageAScreen when the action is triggered.
  onTapBookNowButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutPageAScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapImgCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }
}