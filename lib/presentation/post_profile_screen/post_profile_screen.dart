import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_phone_number.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PostProfileScreen extends StatelessWidget {
  PostProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController messageEditTextController = TextEditingController();

  TextEditingController emailEditTextController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              leading: AppbarLeadingImage(
                onTap: () {
                  Navigator.pop(context); // Implement the back functionality
                },
              ),
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
                    padding: EdgeInsets.only(top: 14.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              width: 267.h,
                              margin: EdgeInsets.symmetric(horizontal: 53.h),
                              child: Text("Please tell us a little about you",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.displayMedium!
                                      .copyWith(height: 1.15))),
                          SizedBox(height: 33.v),
                          Text("Select an option",
                              style: theme.textTheme.titleLarge),
                          SizedBox(height: 5.v),
                          _buildOneRow(context),
                          SizedBox(height: 4.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Row(children: [
                                    Container(
                                        height: 28.adaptSize,
                                        width: 28.adaptSize,
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray50,
                                            borderRadius:
                                            BorderRadius.circular(14.h))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 4.v, bottom: 3.v),
                                        child: Text(" You are a flat owner",
                                            style: theme.textTheme.bodyLarge))
                                  ]))),
                          SizedBox(height: 4.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgMobile,
                                        height: 33.v,
                                        width: 32.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.h, top: 6.v, bottom: 6.v),
                                        child: Text("You are a PG owner",
                                            style: theme.textTheme.bodyLarge))
                                  ]))),
                          SizedBox(height: 20.v),
                          _buildNameEditText(context),
                          SizedBox(height: 12.v),
                          _buildEmailEditText(context),
                          SizedBox(height: 12.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildPhoneNumber(context)),
                          SizedBox(height: 12.v),
                          _buildMessageEditText(context),
                          SizedBox(height: 24.v),
                          _buildUploadButton(context),
                          SizedBox(height: 12.v),
                          _buildFooter(context)
                        ]))))));
  }

  /// Section Widget
/*  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  Widget _buildOneRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 28.adaptSize,
              width: 28.adaptSize,
              decoration: BoxDecoration(
                  color: appTheme.blueGray50,
                  borderRadius: BorderRadius.circular(14.h))),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 2.v),
              child: Text(" You are looking for a Flat/ Flatmate/ PG",
                  style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: nameEditTextController, hintText: "Name"));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: emailEditTextController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomPhoneNumber(
            country: selectedCountry,
            controller: phoneNumberController,
            onTap: (Country value) {
              selectedCountry = value;
            }));
  }

  /// Section Widget
  Widget _buildMessageEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: messageEditTextController,
            hintText: "Message",
            maxLines: 4));
  }

  /// Section Widget
  Widget _buildUploadButton(BuildContext context) {
    return CustomElevatedButton(
        width: 130.h,
        text: "UPLOAD",
        margin: EdgeInsets.only(left: 97.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapUploadButton(context);
        },
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildEmailEditText1(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController1,
        hintText: "Email address",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildSubscribeButton(BuildContext context) {
    return CustomElevatedButton(
        width: 134.h,
        text: "Subscribe",
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return SizedBox(
        height: 726.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.white,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 44.v,
                        width: 46.h,
                        onTap: () {
                          onTapImgCalendar(context);
                        }),
                    SizedBox(height: 54.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v, bottom: 62.v),
                              child: Text("Company",
                                  style: theme.textTheme.titleMedium)),
                          Padding(
                              padding: EdgeInsets.only(left: 40.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtHome(context);
                                        },
                                        child: Text("Home",
                                            style: theme.textTheme.bodyLarge)),
                                    SizedBox(height: 11.v),
                                    Text("About us",
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 12.v),
                                    Text("Our team",
                                        style: theme.textTheme.bodyLarge)
                                  ]))
                        ]),
                    SizedBox(height: 19.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 101.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("Guests",
                                      style: theme.textTheme.titleMedium)),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtBlog(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 40.h),
                                      child: Text("Blog",
                                          style: theme.textTheme.bodyLarge)))
                            ]))),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 119.h),
                            child:
                            Text("FAQ", style: theme.textTheme.bodyLarge))),
                    SizedBox(height: 10.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 103.h),
                            child: Text("Career",
                                style: theme.textTheme.bodyLarge))),
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
                    _buildEmailEditText1(context),
                    SizedBox(height: 20.v),
                    _buildSubscribeButton(context),
                    SizedBox(height: 20.v)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 93.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Contact number: 9999999999",
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
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Text("© 2023 Nestopia",
                                style: CustomTextStyles.bodyMediumGray900)))
                  ])))
        ]));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapUploadButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapImgCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapTxtHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the blogPageScreen when the action is triggered.
  onTapTxtBlog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.blogPageScreen);
  }
}
