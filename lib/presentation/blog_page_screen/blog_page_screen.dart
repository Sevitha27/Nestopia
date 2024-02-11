import '../blog_page_screen/widgets/fivecomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BlogPageScreen extends StatelessWidget {
  BlogPageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          SizedBox(
                              width: 200.h,
                              child: Text("Nestopia\nInsights",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.displayMedium!
                                      .copyWith(height: 1.15))),
                          SizedBox(height: 13.v),
                          _buildImageTitle(context),
                          SizedBox(height: 43.v),
                          _buildFiveComponent(context),
                          SizedBox(height: 43.v),
                          CustomElevatedButton(
                              width: 141.h,
                              text: "Read more",
                              buttonStyle: CustomButtonStyles.fillPrimary),
                          SizedBox(height: 70.v),
                          _buildFooter(context)
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
  Widget _buildImageTitle(BuildContext context) {
    return SizedBox(
        height: 448.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 448.v,
              width: 375.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.v, right: 16.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 32.h, vertical: 31.v),
                  decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 235.h,
                            margin: EdgeInsets.only(right: 59.h),
                            child: Text("We rent your property",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.displayMedium!
                                    .copyWith(height: 1.15))),
                        SizedBox(height: 7.v),
                        Container(
                            width: 217.h,
                            margin: EdgeInsets.only(right: 77.h),
                            child: Text(
                                "Rent, Lease, Find roomates and apartments ",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.25))),
                        SizedBox(height: 23.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFiveComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return FivecomponentItemWidget();
            }));
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
                    CustomTextFormField(
                        controller: emailController,
                        hintText: "Email address",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                        width: 134.h,
                        text: "Subscribe",
                        buttonStyle: CustomButtonStyles.fillPrimary),
                    SizedBox(height: 20.v)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 93.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    // Text("Contact number: 9999999999",
                    //     style: CustomTextStyles.bodyMediumGray900),
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
  onTapImgCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapTxtHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }
}
