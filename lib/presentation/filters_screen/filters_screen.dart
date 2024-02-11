import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_icon_button.dart';
import 'package:sevitha_s_application2/widgets/custom_outlined_button.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
                child: Column(children: [
                  Text("Bangalore", style: CustomTextStyles.titleLargeBlack900),
                  SizedBox(height: 2.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtTwentyFourMillionTwentyTwoThou(context);
                      },
                      child: Text("24.02 – 28.02",
                          style: CustomTextStyles.bodyMediumGray900)),
                  SizedBox(height: 20.v),
                  _buildGuests(context),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 91.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: 20.adaptSize,
                                width: 20.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 11.h, top: 3.v),
                                child: Text("Food requirements ",
                                    style: theme.textTheme.bodyLarge)),
                            Spacer(),
                            Container(
                                width: 24.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.h, vertical: 1.v),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                                child: Text("V",
                                    style:
                                    CustomTextStyles.bodyLargeOnPrimary)),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h, top: 2.v),
                                child: Text("N",
                                    style: CustomTextStyles.bodyLargePrimary))
                          ]))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildButtons(context)));
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
        ]);
  }*/

  /// Section Widget
  Widget _buildGuests(BuildContext context) {
    return SizedBox(
        height: 270.v,
        width: 344.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Container(
                              width: 98.h,
                              margin: EdgeInsets.symmetric(vertical: 7.v),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEvaPeopleFill,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("Roomates",
                                        style: theme.textTheme.bodyLarge))
                              ])),
                          Spacer(),
                          CustomIconButton(
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              onTap: () {
                                onTapBtnEvaPlusFill(context);
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEvaPlusFill)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 12.h, top: 8.v, bottom: 7.v),
                              child: Text("1",
                                  style: theme.textTheme.titleMedium)),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: CustomIconButton(
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  onTap: () {
                                    onTapBtnEvaMinusFill(context);
                                  },
                                  child: CustomImageView(
                                      imagePath:
                                      ImageConstant.imgEvaMinusFill)))
                        ]),
                        SizedBox(height: 12.v),
                        Padding(
                            padding: EdgeInsets.only(right: 119.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                  ImageConstant.imgFluentBed24FilledGray900,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize),
                              Padding(
                                  padding:
                                  EdgeInsets.only(left: 12.h, top: 2.v),
                                  child: Text("Bedrooms:",
                                      style: theme.textTheme.bodyLarge)),
                              Spacer(),
                              Container(
                                  width: 24.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.h, vertical: 1.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder12),
                                  child: Text("1",
                                      style:
                                      CustomTextStyles.bodyLargeOnPrimary)),
                              Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.h, top: 2.v),
                                  child: Text("2",
                                      style:
                                      CustomTextStyles.bodyLargePrimary)),
                              Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.h, top: 2.v),
                                  child: Text("3",
                                      style: CustomTextStyles.bodyLargePrimary))
                            ])),
                        SizedBox(height: 12.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFaSolidBathGray900,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("Bathrooms:",
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("1",
                                  style: CustomTextStyles.bodyLargePrimary)),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("2",
                                  style: CustomTextStyles.bodyLargePrimary)),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("3",
                                  style: CustomTextStyles.bodyLargePrimary))
                        ]),
                        SizedBox(height: 11.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgElWheelchair,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("Disabled access",
                                  style: theme.textTheme.bodyLarge))
                        ]),
                        SizedBox(height: 11.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 85.h,
                                  margin: EdgeInsets.only(top: 2.v),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                            ImageConstant.imgFaSolidCarAlt,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            margin:
                                            EdgeInsets.only(bottom: 1.v)),
                                        Text("Parking",
                                            style: CustomTextStyles
                                                .bodyLargeBluegray700)
                                      ])),
                              CustomIconButton(
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  padding: EdgeInsets.all(2.h),
                                  decoration:
                                  IconButtonStyleHelper.fillBlueGray,
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgEvaCheckmarkFillOnprimary))
                            ]),
                        SizedBox(height: 12.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMdiElevatorPassenger,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("Elevator",
                                  style: theme.textTheme.bodyLarge))
                        ]),
                        SizedBox(height: 11.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMdiDishwasher,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("Dishwasher",
                                  style: theme.textTheme.bodyLarge))
                        ]),
                        SizedBox(height: 11.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMdiWashingMachine,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text("Washing machine",
                                  style: theme.textTheme.bodyLarge))
                        ])
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        onTap: () {
                          onTapBtnEvaPlusFill1(context);
                        },
                        child: CustomImageView(
                            imagePath: ImageConstant.imgEvaPlusFill)),
                    Padding(
                        padding:
                        EdgeInsets.only(left: 12.h, top: 8.v, bottom: 7.v),
                        child: Text("1", style: theme.textTheme.titleMedium)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            onTap: () {
                              onTapBtnEvaMinusFill1(context);
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgEvaMinusFill)))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 20.v),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomOutlinedButton(width: 99.h, text: "Back"),
          CustomElevatedButton(
              width: 130.h,
              text: "Continue",
              buttonStyle: CustomButtonStyles.fillPrimary,
              onPressed: () {
                onTapContinue(context);
              })
        ]));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the datesScreen when the action is triggered.
  onTapTxtTwentyFourMillionTwentyTwoThou(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.datesScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapBtnEvaPlusFill(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapBtnEvaMinusFill(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapBtnEvaPlusFill1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapBtnEvaMinusFill1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }
}
