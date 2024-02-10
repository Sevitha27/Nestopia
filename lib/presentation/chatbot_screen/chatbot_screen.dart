import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_icon_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

class ChatbotScreen extends StatelessWidget {
  ChatbotScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController typeSomethingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 41.h),
                child: Text(
                  "What can i assist you with today?",
                  style: CustomTextStyles.bodyLargeOpenSansHebrewBlack900,
                ),
              ),
              SizedBox(height: 21.v),
              Container(
                margin: EdgeInsets.only(right: 132.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL10,
                ),
                child: Text(
                  "What can i assist you with?",
                  style:
                      CustomTextStyles.titleMediumAbhayaLibreExtraBoldBlack900,
                ),
              ),
              SizedBox(height: 29.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 112.h,
                    right: 11.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: SizedBox(
                    width: 193.h,
                    child: Text(
                      "I tried contacting Mr.Kumar \nfor the Moonraker point \nhouse for rent and he hasn’t \ngotten back to me after i\n paid the deposit.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles
                          .titleMediumAbhayaLibreExtraBoldOnPrimary
                          .copyWith(
                        height: 1.30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Container(
                margin: EdgeInsets.only(right: 113.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 202.h,
                      child: Text(
                        "Thank you for your query,\nMr. Kumar will be contacted\nat the earliest and we will \nhopefully solve your problem \nat the earliest.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles
                            .titleMediumAbhayaLibreExtraBoldBlack900
                            .copyWith(
                          height: 1.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                width: 115.h,
                text: "Thank you.",
                margin: EdgeInsets.only(right: 15.h),
                buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
                buttonTextStyle:
                    CustomTextStyles.titleMediumAbhayaLibreExtraBoldOnPrimary,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 28.v),
              Container(
                margin: EdgeInsets.only(right: 88.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL10,
                ),
                child: Text(
                  "Thank you sir! Any other queries?",
                  style:
                      CustomTextStyles.titleMediumAbhayaLibreExtraBoldBlack900,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrame(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 59.v,
      leadingWidth: 63.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCalendar,
        margin: EdgeInsets.only(
          left: 17.h,
          top: 3.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(15.h, 15.v, 15.h, 24.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 16.h,
        bottom: 28.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusGray600,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: CustomTextFormField(
                controller: typeSomethingController,
                hintText: "Type something",
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 13.v, 14.h, 13.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 14.v,
                  right: 30.h,
                  bottom: 14.v,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
