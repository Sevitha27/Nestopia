import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PropertylistItemWidget extends StatelessWidget {
  const PropertylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 181.h,
      child: Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Text(
          "",
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
class Metropolitanmanor1ItemWidget extends StatelessWidget {
  const Metropolitanmanor1ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle222,
            height: 182.v,
            width: 100.h,
            radius: BorderRadius.only(
              topLeft: Radius.circular(20.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 20.h,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Metropolitan Manor",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFluentBed24Filled,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "1 bedroom",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFaSolidBath,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "1 bath",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "WiFi",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 173.h,
                  child: Text(
                    "City view  |  3rd floor  |  Elevator | Parking ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,AppRoutes.propertyDetailsScreen);
                  },
                  child: CustomElevatedButton(
                    height: 28.v,
                    width: 181.h,
                    text: "Available 28 Nov 2021",
                    buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
                  ),
                ),
                SizedBox(height: 8.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "from",
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: " Rs.",
                        style: CustomTextStyles.bodyLargeff171917,
                      ),
                      TextSpan(
                        text: "34490",
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "/month",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
