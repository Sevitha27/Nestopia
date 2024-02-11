import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_outlined_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SelectACityScreen extends StatelessWidget {
  SelectACityScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          controller: searchController, hintText: "|"),
                      SizedBox(height: 21.v),
                      Text("Most popular cities",
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 14.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUnsplashMoeqotmupg8,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            radius: BorderRadius.circular(10.h),
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("Bangalore",
                                style: theme.textTheme.bodyLarge))
                      ]),
                      SizedBox(height: 10.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUnsplash2qekez5gbkc,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            radius: BorderRadius.circular(10.h)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("Chennai",
                                style: theme.textTheme.bodyLarge))
                      ]),
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
        ],
        styleType: Style.bgFill);
  }*/

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 20.v),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomOutlinedButton(
              width: 99.h,
              text: "Back",
              onPressed: () {
                onTapBack(context);
              }),
          CustomElevatedButton(
              width: 130.h,
              text: "Continue",
              buttonStyle: CustomButtonStyles.fillPrimary)
        ]));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }
}
