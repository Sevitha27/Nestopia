import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';
class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
            body: Container(
                width: 339.h,
                padding: EdgeInsets.all(32.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapCard(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaCreditCardFill,
                                height: 20.adaptSize,
                                width: 20.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("Card",
                                    style: theme.textTheme.bodyLarge))
                          ])),
                      SizedBox(height: 15.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEvaRepeatOutline,
                            height: 20.adaptSize,
                            width: 20.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Bank transfer",
                                style: theme.textTheme.bodyLarge))
                      ]),
                      SizedBox(height: 15.v),
                      GestureDetector(
                          onTap: () {
                            onTapBankTransfer(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEvaRepeatOutline,
                                height: 20.adaptSize,
                                width: 20.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("UPI",
                                    style: theme.textTheme.bodyLarge))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the checkoutPageB1Screen when the action is triggered.
  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmationScreen);
  }

  /// Navigates to the confirmationScreen when the action is triggered.
  onTapBankTransfer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmationScreen);
  }
}
