import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class OneItemWidget extends StatelessWidget {
  const OneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.h),
      decoration: AppDecoration.fillBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Guaranteed rent",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 8.v),
          Text(
            "We do the searching for you",
            style: CustomTextStyles.bodyMediumGray900,
          ),
          SizedBox(height: 15.v),
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
        ],
      ),
    );
  }
}
