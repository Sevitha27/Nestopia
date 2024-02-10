import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

class Frame233Screen extends StatelessWidget {
  const Frame233Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395.h,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10.v),
                              padding: EdgeInsets.symmetric(vertical: 39.v),
                              child: Column(children: [
                                SizedBox(height: 104.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtHome(context);
                                    },
                                    child: Text("Home",
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 19.v),
                                Text("Landloards",
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 21.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtBlog(context);
                                    },
                                    child: Text("Blog",
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 18.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSaved(context);
                                    },
                                    child: Text("Saved",
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 21.v),
                                Text("My profile",
                                    style: CustomTextStyles.bodyLargeGray90001),
                                SizedBox(height: 354.v),
                                Text("Contact number: 02033074477",
                                    style: CustomTextStyles.bodyMediumGray900),
                                SizedBox(height: 12.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLink,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEvaFacebookFill,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          margin: EdgeInsets.only(left: 12.h)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEvaTwitterFill,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          margin: EdgeInsets.only(left: 12.h))
                                    ]),
                                SizedBox(height: 13.v),
                                Text("© 2021 Flex Living",
                                    style: CustomTextStyles.bodyMediumGray900)
                              ]))))
                ]))));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapTxtHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the blogPageScreen when the action is triggered.
  onTapTxtBlog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.blogPageScreen);
  }

  /// Navigates to the savedScreen when the action is triggered.
  onTapTxtSaved(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.savedScreen);
  }
}
