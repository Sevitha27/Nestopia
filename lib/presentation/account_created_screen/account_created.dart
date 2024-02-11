import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_icon_button.dart';

class account_created extends StatelessWidget {
  const account_created({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 39.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGreen,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEvaCheckmarkOutline)),
                  SizedBox(height: 19.v),
                  SizedBox(
                      width: 248.h,
                      child: Text(
                          "Account Created Successfully!",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.17)))
                ])),
            bottomNavigationBar: _buildRedirectToHome(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  }

  /// Section Widget
  Widget _buildRedirectToHome(BuildContext context) {
    return CustomElevatedButton(
        width: 190.h,
        text: "Redirect to Home",
        margin: EdgeInsets.only(left: 92.h, right: 92.h, bottom: 32.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapRedirectToHome(context);
        });
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapRedirectToHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }
}
