import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FivecomponentItemWidget extends StatelessWidget {
  const FivecomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashR80lcluvvm,
            height: 200.v,
            width: 343.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(20.h),
            ),
          ),
          SizedBox(height: 21.v),
          Text(
            "Tulips palace",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 9.v),
          Text(
            "Regalia has never looked better",
            style: CustomTextStyles.bodyMediumGray900,
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEvaClockFill,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Text(
                  "1 min read",
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 31.v),
        ],
      ),
    );
  }
}
