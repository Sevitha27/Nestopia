import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CheckoutPageAScreen extends StatelessWidget {
  CheckoutPageAScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildDetailsColumn(context),
                          SizedBox(height: 82.v),
                          Text("Booking review",
                              style: theme.textTheme.displayMedium),
                          SizedBox(height: 36.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildRentPerMonthRow(context,
                                  monthlySubtotalText: "Rent per month",
                                  rsText: "Rs.8725")),
                          SizedBox(height: 8.v),
                          _buildUtilitiesPerMonthRow(context),
                          SizedBox(height: 6.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildRentPerMonthRow(context,
                                  monthlySubtotalText: "Monthly subtotal",
                                  rsText: "Rs.3340.70 ")),
                          SizedBox(height: 18.v),
                          _buildOneTimeCleaningRow(context),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildRentPerMonthRow(context,
                                  monthlySubtotalText: "Total charges",
                                  rsText: "Rs.3340.70 ")),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildRentPerMonthRow(context,
                                  monthlySubtotalText: "Total",
                                  rsText: "Rs.8725.00")),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                              width: 181.h,
                              text: "Confirm and pay",
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              onPressed: () {
                                onTapConfirmAndPay(context);
                              }),
                          SizedBox(height: 80.v),
                          _buildFooterStack(context)
                        ]))))));
  }

  /// Section Widget
  /* PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  Widget _buildDetailsColumn(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle228,
              height: 240.v,
              width: 375.h,
              radius: BorderRadius.vertical(top: Radius.circular(20.h))),
          SizedBox(height: 20.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 32.h, right: 52.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildMoveInColumn(context,
                            moveInText: "Move out", dateText: "31.02.2022"),
                        _buildMoveInColumn(context,
                            moveInText: "Move in", dateText: "31.12.2021")
                      ]))),
          SizedBox(height: 27.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("1", style: theme.textTheme.titleMedium),
            CustomImageView(
                imagePath: ImageConstant.imgEvaPeopleFill,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 20.h)),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text("Guests", style: theme.textTheme.titleMedium))
          ]),
          SizedBox(height: 15.v),
          Text("All utilities are included", style: theme.textTheme.bodyLarge),
          SizedBox(height: 21.v),
          Text("Payment timeline", style: theme.textTheme.titleMedium),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVideoCamera,
                        height: 65.v,
                        width: 13.h,
                        margin: EdgeInsets.only(bottom: 41.v)),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text("Reserve this apaptment",
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  SizedBox(height: 3.v),
                                                  Text("Due now",
                                                      style: theme
                                                          .textTheme.bodySmall)
                                                ])),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(bottom: 19.v),
                                            child: Text("Rs.34001.70",
                                                style:
                                                theme.textTheme.bodyLarge))
                                      ]),
                                  SizedBox(height: 8.v),
                                  Text("After move-out",
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 3.v),
                                  Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                                width: 235.h,
                                                margin:
                                                EdgeInsets.only(top: 1.v),
                                                child: Text(
                                                    "Receive your Rs.4000.00 deposit back within 30 days",
                                                    maxLines: 2,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                        height: 1.33)))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEvaAlertCircleFill,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 22.h, bottom: 14.v))
                                      ])
                                ])))
                  ])),
          SizedBox(height: 29.v)
        ]));
  }

  /// Section Widget
  Widget _buildUtilitiesPerMonthRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("Utilities per month",
                    style: theme.textTheme.bodyLarge)),
            CustomImageView(
                imagePath: ImageConstant.imgEvaAlertCircleFillGray900,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 8.h))
          ]),
          Text("Rs.250.70", style: theme.textTheme.bodyLarge)
        ]));
  }

  /// Section Widget
  Widget _buildOneTimeCleaningRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("One-time cleaning fee",
                    style: theme.textTheme.bodyLarge)),
            CustomImageView(
                imagePath: ImageConstant.imgEvaAlertCircleFillGray900,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 8.h))
          ]),
          Text("Rs.225.00", style: theme.textTheme.bodyLarge)
        ]));
  }

  /// Section Widget
  Widget _buildFooterStack(BuildContext context) {
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
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Privacy",
                                          style: theme.textTheme.titleMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 40.h),
                                      child: Text("Terms of Service",
                                          style: theme.textTheme.bodyLarge))
                                ]))),
                    SizedBox(height: 12.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 54.h),
                            child: Text("Privacy Policy",
                                style: theme.textTheme.bodyLarge))),
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

  /// Common widget
  Widget _buildMoveInColumn(
      BuildContext context, {
        required String moveInText,
        required String dateText,
      }) {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(right: 18.h),
              child: Text(moveInText,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.gray900)))),
      SizedBox(height: 11.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomImageView(
            imagePath: ImageConstant.imgEvaCalendarFill,
            height: 20.adaptSize,
            width: 20.adaptSize),
        Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(dateText,
                style: theme.textTheme.bodyLarge!
                    .copyWith(color: appTheme.gray900)))
      ])
    ]);
  }

  /// Common widget
  Widget _buildRentPerMonthRow(
      BuildContext context, {
        required String monthlySubtotalText,
        required String rsText,
      }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(monthlySubtotalText,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray900))),
      Text(rsText,
          style: theme.textTheme.titleMedium!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the createAccountScreen when the action is triggered.
  onTapConfirmAndPay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
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
