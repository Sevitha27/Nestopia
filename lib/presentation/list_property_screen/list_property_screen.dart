import '../list_property_screen/widgets/one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_drop_down.dart';
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
class ListPropertyScreen extends StatelessWidget {
  ListPropertyScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

 // TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

 // TextEditingController emailController1 = TextEditingController();

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
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildFirstScreen(context),
                          SizedBox(height: 80.v),
                          Container(
                              width: 276.h,
                              margin: EdgeInsets.only(left: 50.h, right: 47.h),
                              child: Text("Better than Property Management",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge!
                                      .copyWith(height: 1.20))),
                          SizedBox(height: 9.v),
                          Container(
                              width: 338.h,
                              margin: EdgeInsets.only(left: 16.h, right: 18.h),
                              child: Text(
                                  "We work with 100+  companies to meet accommodation needs in London. Offer a dedicated booking manager that can help to find properties for your needs.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.25))),
                          SizedBox(height: 37.v),
                          _buildOne(context),
                          SizedBox(height: 140.v),
                          Text("How it Works",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 39.v),
                          _buildPoints(context),
                          SizedBox(height: 13.v),
                          Text("Corporate Partnerships",
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 12.v),
                          Container(
                              width: 338.h,
                              margin: EdgeInsets.only(left: 16.h, right: 18.h),
                              child: Text(
                                  "We work with 100+  companies to meet accommodation needs in London. Offer a dedicated booking manager that can help to find properties for your needs.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.25))),
                          SizedBox(height: 37.v),
                          _buildBefore(context),
                          SizedBox(height: 20.v),
                          _buildAfter(context),
                          SizedBox(height: 40.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgEvaBookFill,
                              height: 40.adaptSize,
                              width: 40.adaptSize),
                          SizedBox(height: 13.v),
                          Text("Consequat risus",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Container(
                              width: 335.h,
                              margin: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Text(
                                  "Euismod commodo feugiat purus egestas diam. Facilisi sed senectus consequat risus. Porta purus nec dui odio vehicula.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumGray900
                                      .copyWith(height: 1.29))),
                          SizedBox(height: 19.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgEvaAwardFill,
                              height: 40.adaptSize,
                              width: 40.adaptSize),
                          SizedBox(height: 13.v),
                          Text("Morbi pulvinar",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Container(
                              width: 334.h,
                              margin: EdgeInsets.only(left: 20.h, right: 19.h),
                              child: Text(
                                  "Eu vulputate mi cras quam lectus. Ut ut dignissim amet dignissim gravida sit ullamcorper lectus.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumGray900
                                      .copyWith(height: 1.29))),
                          SizedBox(height: 18.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgEvaBookFill,
                              height: 40.adaptSize,
                              width: 40.adaptSize),
                          SizedBox(height: 13.v),
                          Text("Turpis elit",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Container(
                              width: 317.h,
                              margin: EdgeInsets.only(left: 28.h, right: 29.h),
                              child: Text(
                                  "Arcu venenatis id dignissim massa ipsum. Viverra mi habitant urna at elit dignissim cursus ut facilisi.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumGray900
                                      .copyWith(height: 1.29))),
                          SizedBox(height: 18.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgEvaAwardFill,
                              height: 40.adaptSize,
                              width: 40.adaptSize),
                          SizedBox(height: 13.v),
                          Text("Faucibus egestas",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Container(
                              width: 333.h,
                              margin: EdgeInsets.symmetric(horizontal: 20.h),
                              child: Text(
                                  "Vehicula arcu, felis, et urna, nunc, ut eget pellentesque scelerisque. Accumsan et velit nibh tempor.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumGray900
                                      .copyWith(height: 1.29))),
                          SizedBox(height: 30.v),
                          Text("Pricing", style: theme.textTheme.headlineLarge),
                          SizedBox(height: 13.v),
                          Text(
                              "Compare our pricing model to high street agents",
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 38.v),
                          _buildOne1(context),
                          SizedBox(height: 39.v),
                          Text("Vs", style: theme.textTheme.headlineSmall),
                          SizedBox(height: 39.v),
                          _buildThree(context),
                          SizedBox(
                              width: 231.h,
                              child: Text("Frequently Asked Questions",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge!
                                      .copyWith(height: 1.20))),
                          SizedBox(height: 34.v),
                          _buildCanIMakeChnages(context),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 298.h,
                                  margin:
                                  EdgeInsets.only(left: 16.h, right: 60.h),
                                  child: Text(
                                      "Thank you for your question! This depend on the home owner.You can contact the respective person regarding this query.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMediumGray900
                                          .copyWith(height: 1.29)))),
                          SizedBox(height: 18.v),
                          _buildQuestion11(context),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "What if the home owner ghosts me?")),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "What if i do not like the home when i see it?")),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "Can i get refund for months i dont stay?")),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "How to contact the roommate if phone no not working?")),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "I need to find apartments only,help.")),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "How to stop paying in cash to landlord?")),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText:
                                  "Can i not pay rent if i decide to not move in?")),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildQuestion4(context,
                                  dynamicText: "how to find help?")),
                          SizedBox(height: 47.v),
                          _buildFooter(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: Container(
            height: 44.v,
            width: 46.h,
            margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v),
            child: Stack(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 44.v,
                  width: 46.h,
                  alignment: Alignment.center),
              SizedBox(
                  height: 44.v,
                  width: 46.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 44.v,
                        width: 46.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 44.v,
                        width: 46.h,
                        alignment: Alignment.centerLeft)
                  ]))
            ])),
        actions: [
          Container(
              height: 19.v,
              width: 23.h,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 19.v,
                    width: 23.h,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 19.v,
                    width: 23.h,
                    alignment: Alignment.center)
              ]))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Name *",
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
        fillColor: theme.colorScheme.onPrimary.withOpacity(1));
  }

  /// Section Widget
  // Widget _buildEmail(BuildContext context) {
  //   return CustomTextFormField(
  //       controller: emailController,
  //       hintText: "Email *",
  //       textInputType: TextInputType.emailAddress,
  //       borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
  //       fillColor: theme.colorScheme.onPrimary.withOpacity(1));
  // }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Phone number *",
        textInputType: TextInputType.phone,
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
        fillColor: theme.colorScheme.onPrimary.withOpacity(1));
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        width: 131.h,
        text: "Submit",
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Section Widget
  Widget _buildFirstScreen(BuildContext context) {
    return SizedBox(
        height: 748.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage748x375,
              height: 748.v,
              width: 375.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 16.h, top: 20.v, right: 16.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.h, vertical: 30.v),
                  decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 277.h,
                            margin: EdgeInsets.only(left: 13.h, right: 12.h),
                            child: Text("Earn more from your property, do less",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.displayMedium!
                                    .copyWith(height: 1.15))),
                        SizedBox(height: 15.v),
                        Text("Find out if your property meets our criteria",
                            style: theme.textTheme.bodyLarge),
                        SizedBox(height: 30.v),
                        _buildName(context),
                        SizedBox(height: 16.v),
                        //_buildEmail(context),
                        SizedBox(height: 16.v),
                        _buildPhoneNumber(context),
                        SizedBox(height: 26.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Property details",
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 13.v),
                        CustomDropDown(
                            icon: Container(
                                margin:
                                EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
                                child: CustomImageView(
                                    imagePath:
                                    ImageConstant.imgEvaarrowdownfill,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize)),
                            hintText: "Area *",
                            hintStyle: CustomTextStyles.bodyLargeBluegray700,
                            items: dropdownItemList,
                            borderDecoration: DropDownStyleHelper.fillOnPrimary,
                            filled: true,
                            fillColor:
                            theme.colorScheme.onPrimary.withOpacity(1),
                            onChanged: (value) {}),
                        SizedBox(height: 16.v),
                        CustomDropDown(
                            icon: Container(
                                margin:
                                EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
                                child: CustomImageView(
                                    imagePath:
                                    ImageConstant.imgEvaarrowdownfill,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize)),
                            hintText: "# of bedrooms *",
                            hintStyle: CustomTextStyles.bodyLargeBluegray700,
                            items: dropdownItemList1,
                            borderDecoration: DropDownStyleHelper.fillOnPrimary,
                            filled: true,
                            fillColor:
                            theme.colorScheme.onPrimary.withOpacity(1),
                            onChanged: (value) {}),
                        SizedBox(height: 32.v),
                        _buildSubmit(context)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
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
              return OneItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildPoints(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 47.h),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLineWithCircles,
                  height: 690.v,
                  width: 20.h),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 36.h, bottom: 9.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaEmailFill,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 11.v),
                            Text("Get in touch",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 39.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaPeopleFill,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 11.v),
                            Text("Let’s chat",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 39.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgEye,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 13.v),
                            Text("Property viewing",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 37.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaPantoneFill,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 11.v),
                            Text("Time to decorate",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 39.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaBriefcaseFill,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 13.v),
                            Text("Moving in & Moving up!",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 37.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaSunFill,
                                height: 40.adaptSize,
                                width: 40.adaptSize),
                            SizedBox(height: 11.v),
                            Text("Sit back & Relax",
                                style: theme.textTheme.headlineSmall)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildBeforeButton(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        width: 152.h,
        text: "Before",
        buttonStyle: CustomButtonStyles.fillGreenTL10,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        alignment: Alignment.bottomRight);
  }

  /// Section Widget
  Widget _buildBefore(BuildContext context) {
    return SizedBox(
        height: 300.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashItC9yfrim,
              height: 300.v,
              width: 375.h,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.center),
          _buildBeforeButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildAfterButton(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        width: 135.h,
        text: "After",
        buttonStyle: CustomButtonStyles.fillGreenTL10,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        alignment: Alignment.bottomRight);
  }

  /// Section Widget
  Widget _buildAfter(BuildContext context) {
    return SizedBox(
        height: 300.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashItC9yfrim300x375,
              height: 300.v,
              width: 375.h,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.center),
          _buildAfterButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildOne1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.outlineGrayF
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(context,
                  dynamicText: "High Street Agents",
                  dynamicText1: "12% ",
                  dynamicText2: "management fee"),
              SizedBox(height: 40.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("6 to 12 months",
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: _buildThreeRow(context,
                      weeklyCleaningText: "No maintenance")),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("No weekly cleaning",
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("No interior design",
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child:
                        Text("5% void", style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: _buildSix(context, priceText: "£24,900")),
              SizedBox(height: 30.v)
            ]));
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
        width: 161.h,
        text: "Get started",
        buttonStyle: CustomButtonStyles.fillPrimary,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.outlineGrayF
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(context,
                  dynamicText: "Flex Living (guaranteed Rental)",
                  dynamicText1: "Fixed price",
                  dynamicText2: "monthly"),
              SizedBox(height: 40.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("3 to 5 years",
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("Free maintenance",
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: _buildThreeRow(context,
                      weeklyCleaningText: "Weekly cleaning")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("Interior design",
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEvaCheckmarkFill,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child:
                        Text("No void", style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: _buildSix(context, priceText: "£30,000")),
              SizedBox(height: 38.v),
              _buildGetStarted(context),
              SizedBox(height: 32.v)
            ]));
  }

  /// Section Widget
  Widget _buildCanIMakeChnages(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: SizedBox(
                      width: 272.h,
                      child: Text("Can i make chnages to the wall colors?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleLarge!
                              .copyWith(height: 1.20)))),
              CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 24.v,
                  width: 26.h,
                  margin: EdgeInsets.only(left: 44.h, bottom: 24.v))
            ]));
  }

  /// Section Widget
  Widget _buildQuestion11(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 293.h,
                            child: Text(
                                "What is the penalty i need to pay for moving in late?",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge!
                                    .copyWith(height: 1.20))),
                        SizedBox(height: 5.v),
                        Text("Thank you for your question! ",
                            style: CustomTextStyles.bodyMediumGray900)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 24.v,
                  width: 26.h,
                  margin: EdgeInsets.only(left: 23.h, bottom: 50.v))
            ]));
  }

  /// Section Widget
  // Widget _buildEmail1(BuildContext context) {
  //   return CustomTextFormField(
  //       controller: emailController1,
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
                   // _buildEmail1(context),
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
  Widget _buildTitle(
      BuildContext context, {
        required String dynamicText,
        required String dynamicText1,
        required String dynamicText2,
      }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 30.v),
        decoration: AppDecoration.fillGreen
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL202),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(dynamicText,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.gray900)),
              SizedBox(height: 20.v),
              Text(dynamicText1,
                  style: theme.textTheme.displayMedium!
                      .copyWith(color: appTheme.gray900)),
              SizedBox(height: 4.v),
              Text(dynamicText2,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.gray900))
            ]));
  }

  /// Common widget
  Widget _buildThreeRow(
      BuildContext context, {
        required String weeklyCleaningText,
      }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEvaCheckmarkFill,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(weeklyCleaningText,
              style:
              theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray900)))
    ]);
  }

  /// Common widget
  Widget _buildSix(
      BuildContext context, {
        required String priceText,
      }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEvaCheckmarkFill,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(priceText,
              style:
              theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray900)))
    ]);
  }

  /// Common widget
  Widget _buildQuestion4(
      BuildContext context, {
        required String dynamicText,
      }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SizedBox(
                  width: 264.h,
                  child: Text(dynamicText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.gray900, height: 1.20)))),
          CustomImageView(
              imagePath: ImageConstant.imgPlus,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(left: 48.h, bottom: 18.v))
        ]);
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
