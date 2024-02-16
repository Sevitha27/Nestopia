import '../room_mate_screen/widgets/metropolitanmanor_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/custom_drop_down.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RoomMateScreen extends StatelessWidget {
  RoomMateScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

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
                    padding: EdgeInsets.only(top: 12.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Select a city")),
                          SizedBox(height: 40.v),
                          _buildFilters(context),
                          SizedBox(height: 22.v),
                          _buildSortResult(context),
                          SizedBox(height: 10.v),
                          _buildMetropolitanManor(context),
                          SizedBox(height: 40.v),
                          _buildShowMoreOptions(context),
                          SizedBox(height: 10.v),
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
  Widget _buildFilters(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 94.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                  child: Text("Parking",
                      style: CustomTextStyles.titleMediumOnPrimary)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomDropDown(
                      width: 143.h,
                      icon: Container(
                          margin: EdgeInsets.fromLTRB(10.h, 12.v, 20.h, 12.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEvaarrowdownfill,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      hintText: "Bedrooms",
                      items: dropdownItemList,
                      onChanged: (value) {})),
              Container(
                  height: 44.v,
                  width: 148.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 44.v,
                            width: 148.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.h),
                                border: Border.all(
                                    color: appTheme.blueGray700, width: 1.h)))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text("Bathrooms",
                                style: CustomTextStyles.titleMediumBluegray700)))
                  ])),
              Container(
                  width: 152.h,
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                  child: Text("Disabled access",
                      style: CustomTextStyles.titleMediumBluegray700)),
              Container(
                  width: 99.h,
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                  child: Text("Elevator",
                      style: CustomTextStyles.titleMediumBluegray700)),
              Container(
                  height: 44.v,
                  width: 124.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 44.v,
                            width: 124.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.h),
                                border: Border.all(
                                    color: appTheme.blueGray700, width: 1.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Dishwasher",
                            style: CustomTextStyles.titleMediumBluegray700))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildSortResult(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("52 results for your filters",
                  style: theme.textTheme.bodyLarge)),
          CustomDropDown(
              width: 84.h,
              icon: Container(
                  margin: EdgeInsets.only(left: 12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEvaarrowdownfill,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              hintText: "Sort by",
              items: dropdownItemList1,
              onChanged: (value) {})
        ]));
  }

  /// Section Widget
  Widget _buildMetropolitanManor(BuildContext context) {
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
              return MetropolitanmanorItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildShowMoreOptions(BuildContext context) {
    return CustomElevatedButton(
        width: 202.h,
        text: "Show more options",
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email address",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.emailAddress);
  }

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
                    _buildEmail(context),
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
