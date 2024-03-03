import '../saved_screen/widgets/apartmentlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
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
// ignore_for_file: must_be_immutable
class SavedScreen extends StatelessWidget {
  SavedScreen({Key? key}) : super(key: key);

 // TextEditingController emailInputController = TextEditingController();

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
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                          _buildHeader(context),
                          SizedBox(height: 5.v),
                          _buildApartmentList(context),
                          SizedBox(height: 40.v),
                          _buildShowMoreButton(context),
                          SizedBox(height: 80.v),
                          _buildFooter(context),
                          SizedBox(height: 80.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return SizedBox(
        height: 98.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 30.v),
                  padding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 44.v,
                            width: 46.h,
                            onTap: () {
                              onTapImgCalendar(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgMegaphone,
                            height: 19.v,
                            width: 23.h,
                            margin: EdgeInsets.symmetric(vertical: 12.v))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 114.h),
                  child: Text("SAVED:", style: theme.textTheme.displaySmall)))
        ]));
  }

  /// Section Widget
  Widget _buildApartmentList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount: 8,
            itemBuilder: (context, index) {
              return ApartmentlistItemWidget(onTapAvailableButton1: () {
                onTapAvailableButton1(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildShowMoreButton(BuildContext context) {
    return CustomElevatedButton(
        width: 230.h,
        text: "Show more apartments",
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Section Widget
  // Widget _buildEmailInput(BuildContext context) {
  //   return CustomTextFormField(
  //       controller: emailInputController,
  //       hintText: "Email address",
  //       textInputAction: TextInputAction.done,
  //       textInputType: TextInputType.emailAddress);
  // }

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
                          onTapImgCalendar1(context);
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
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtBlog(context);
                                        },
                                        child: Text("Blog",
                                            style: theme.textTheme.bodyLarge)),
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
                    //_buildEmailInput(context),
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

  /// Navigates to the propertyDetailsScreen when the action is triggered.
  onTapAvailableButton1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.propertyDetailsScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapImgCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapImgCalendar1(BuildContext context) {
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
