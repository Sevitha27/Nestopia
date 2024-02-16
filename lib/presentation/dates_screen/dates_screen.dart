import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DatesScreen extends StatelessWidget {
  DatesScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                child: Column(children: [
                  Text("Choose dates",
                      style: CustomTextStyles.titleLargeBlack900),
                  SizedBox(height: 19.v),
                  _buildCalendar(context),
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
  }
*/
  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
        height: 176.v,
        width: 343.h,
        child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                selectedDayHighlightColor: Color(0XFF49735A),
                centerAlignModePicker: true,
                firstDayOfWeek: 0,
                controlsHeight: 21.56,
                selectedDayTextStyle: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400),
                controlsTextStyle: TextStyle(
                    color: appTheme.gray900,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700),
                dayTextStyle: TextStyle(
                    color: appTheme.gray900,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400),
                dayBorderRadius: BorderRadius.circular(12.h)),
            value: selectedDatesFromCalendar1,
            onValueChanged: (dates) {}));
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 20.v),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomOutlinedButton(width: 99.h, text: "Back"),
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
}
