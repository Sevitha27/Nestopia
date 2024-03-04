import '../rent_screen/widgets/metropolitanmanor1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_drop_down.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RentScreen extends StatelessWidget {
  RentScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(

              title: Text('RENT'),
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
                    padding: EdgeInsets.only(top: 25.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 8.v),
                        child: Column(children: [
                         
                          // _buildPropertyList(context),
                          // _buildOneRow(context),
                          SizedBox(height: 5.v),
                          _buildTwoRow(context),
                          SizedBox(height: 20.v),
                          _buildOneRow1(context),
                          SizedBox(height: 20.v),
                          _buildTwoRow1(context),
                          SizedBox(height: 20.v),
                          _buildOneRow2(context),
                          SizedBox(height: 20.v),
                          _buildTwoRow2(context),
                          SizedBox(height: 20.v),
                          _buildOneRow3(context),
                          SizedBox(height: 20.v),
                          _buildTwoRow3(context),
                          SizedBox(height: 40.v),
                          _buildShowMoreApartments(context),
                          _buildFooter(context)
                        ]))))));
  }

  
  /// Section Widget
  // Widget _buildPropertyList(BuildContext context) {
  //   return SizedBox(
  //       height: 21.v,
  //       child: ListView.separated(
  //           padding: EdgeInsets.symmetric(horizontal: 16.h),
  //           scrollDirection: Axis.horizontal,
  //           separatorBuilder: (context, index) {
  //             return SizedBox(width: 77.h);
  //           },
  //           itemCount: 2,
  //           itemBuilder: (context, index) {
  //             return PropertylistItemWidget();
  //           }
  //           ));
  // }

  /// Section Widget
  Widget _buildAvailable28Nov2021(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.propertyDetailsScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildOneRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle222,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 12.v, right: 20.h, bottom: 12.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Metropolitan Manor",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 12.v),
                    _buildBedroomBath(context,
                        bedroomCount: "1 bedroom",
                        bathroomCount: "1 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2021(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "34490", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2022(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.propertyDetailsScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwoRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle222182x100,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Loft Life", style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    _buildBedroomBath(context,
                        bedroomCount: "2 bedroom",
                        bathroomCount: "2 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2021(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "35990", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2023(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.checkoutPageAScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildOneRow1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle222202x100,
              height: 202.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 134.h,
                        child: Text("The Contemporary Chambers",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!
                                .copyWith(height: 1.25))),
                    SizedBox(height: 13.v),
                    _buildBedroomBath(context,
                        bedroomCount: "1 bedroom",
                        bathroomCount: "1 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2023(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "34490", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2024(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.checkoutPageAScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwoRow1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2221,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Urban Haven", style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    Row(children: [
                      Text("2 bedroom", style: theme.textTheme.bodySmall),
                      CustomImageView(
                          imagePath: ImageConstant.imgFluentBed24Filled,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 4.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgFaSolidBath,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 13.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child:
                          Text("2 bath", style: theme.textTheme.bodySmall)),
                      CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 13.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("WiFi", style: theme.textTheme.bodySmall))
                    ]),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2024(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "39490", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2025(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.checkoutPageAScreen

        );
      },
    );
  }


  /// Section Widget
  Widget _buildOneRow2(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2222,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Industrial Residence",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    _buildBedroomBath(context,
                        bedroomCount: "1 bedroom",
                        bathroomCount: "1 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2025(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "34490", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2026(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.checkoutPageAScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwoRow2(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2223,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Modern Loft", style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    _buildBedroomBath(context,
                        bedroomCount: "2 bedroom",
                        bathroomCount: "2 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2026(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "39490", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2027(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.checkoutPageAScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildOneRow3(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2224,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Elevated Abode",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    _buildBedroomBath(context,
                        bedroomCount: "1 bedroom",
                        bathroomCount: "1 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2027(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "34940", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAvailable28Nov2028(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 181.h,
      text: "Available 28 Nov 2021",
      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
      onPressed: () {
        // Navigate to a new screen on button tap
        Navigator.pushNamed(
            context,
            AppRoutes.checkoutPageAScreen

        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwoRow3(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2225,
              height: 182.v,
              width: 100.h,
              radius: BorderRadius.only(topLeft: Radius.circular(20.h))),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The Urban Retreat",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 13.v),
                    _buildBedroomBath(context,
                        bedroomCount: "2 bedroom",
                        bathroomCount: "2 bath",
                        wifiText: "WiFi"),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 173.h,
                        child: Text(
                            "City view  |  3rd floor  |  Elevator | Parking ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!
                                .copyWith(height: 1.33))),
                    SizedBox(height: 11.v),
                    _buildAvailable28Nov2028(context),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "from", style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: " Rs.",
                              style: CustomTextStyles.bodyLargeff171917),
                          TextSpan(
                              text: "34990", style: theme.textTheme.titleSmall),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "/month", style: theme.textTheme.bodyMedium)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildShowMoreApartments(BuildContext context) {
    return CustomElevatedButton(
        width: 230.h,
        text: "Show more apartments",
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Section Widget
  // Widget _buildEmail(BuildContext context) {
  //   return CustomTextFormField(
  //       controller: emailController,
  //       hintText: "Email address",
  //       textInputAction: TextInputAction.done,
  //       textInputType: TextInputType.emailAddress);
  // }

  /// Section Widget
  Widget _buildSubscribe(BuildContext context) {
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
                    //_buildEmail(context),
                    SizedBox(height: 20.v),
                    _buildSubscribe(context),
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

  /// Common widget
  Widget _buildBedroomBath(
      BuildContext context, {
        required String bedroomCount,
        required String bathroomCount,
        required String wifiText,
      }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFluentBed24Filled,
          height: 16.adaptSize,
          width: 16.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(bedroomCount,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray900))),
      CustomImageView(
          imagePath: ImageConstant.imgFaSolidBath,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 13.h)),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(bathroomCount,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray900))),
      CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 13.h)),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(wifiText,
              style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.gray900)))
    ]);
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

  /// Navigates to the blogPageScreen when the action is triggered.
  onTapTxtBlog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.blogPageScreen);
  }
}