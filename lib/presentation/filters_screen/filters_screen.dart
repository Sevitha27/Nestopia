import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_icon_button.dart';
import 'package:sevitha_s_application2/widgets/custom_outlined_button.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  int selectedBedrooms = 1;
  int selectedBathrooms = 1;
  bool isParkingSelected = true; // default is 'Yes'
  bool isElevatorSelected = true; // default is 'Yes'
  int roommatesCount = 1;
  int washingMachineCount = 1;

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
        // appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
          child: Column(
            children: [
              Text("Bangalore", style: CustomTextStyles.titleLargeBlack900),
              SizedBox(height: 2.v),
              GestureDetector(
                onTap: () {
                  onTapTxtTwentyFourMillionTwentyTwoThou(context);
                },
                child: Text("24.02 – 28.02",
                    style: CustomTextStyles.bodyMediumGray900),
              ),
              SizedBox(height: 20.v),
              _buildGuests(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtons(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCalendar,
        margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v),
        onTap: () {
          onTapCalendar(context);
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v), onTapNestopia: () {  },
        ),
      ],
    );
  }

  Widget _buildGuests(BuildContext context) {
    return SizedBox(
      height: 270.v,
      width: 344.h,
      child: Stack(alignment: Alignment.bottomRight, children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 98.h,
                      margin: EdgeInsets.symmetric(vertical: 7.v),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEvaPeopleFill,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("Roomates",
                                style: theme.textTheme.bodyLarge),

                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      onTap: () {
                        setState(() {
                          roommatesCount = roommatesCount + 1;
                        });
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEvaPlusFill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 12.h, top: 8.v, bottom: 7.v),
                      child: Text("$roommatesCount",
                          style: theme.textTheme.titleMedium),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        onTap: () {
                          setState(() {
                            roommatesCount = roommatesCount > 1
                                ? roommatesCount - 1
                                : 1;
                          });
                        },
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEvaMinusFill,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath:
                      ImageConstant.imgFluentBed24FilledGray900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h, top: 2.v),
                      child: Text("Bedrooms:",
                          style: theme.textTheme.bodyLarge),
                    ),
                    Spacer(),
                    for (int i = 1; i <= 3; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedBedrooms = i;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "$i",
                            style: TextStyle(
                              color: selectedBedrooms == i
                                  ? Colors.lightGreen // Highlighted color
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),

                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFaSolidBathGray900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("Bathrooms:",
                          style: theme.textTheme.bodyLarge),
                    ),
                    Spacer(),
                    for (int i = 1; i <= 3; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedBathrooms = i;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "$i",
                            style: TextStyle(
                              color: selectedBathrooms == i
                                  ? Colors.lightGreen // Highlighted color
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 85.h,
                      margin: EdgeInsets.only(top: 2.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath:
                            ImageConstant.imgFaSolidCarAlt,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Text("Parking",
                              style: CustomTextStyles
                                  .bodyLargeBluegray700),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        _buildParkingButton("Yes", true),
                        SizedBox(width: 10.v),
                        _buildParkingButton("No", false),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 85.h,
                      margin: EdgeInsets.only(top: 2.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath:
                            ImageConstant.imgFaSolidCarAlt,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Text("Elevator",
                              style: CustomTextStyles
                                  .bodyLargeBluegray700),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        _buildElevatorButton("Yes", true),
                        SizedBox(width: 10.v),
                        _buildElevatorButton("No", false),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 11.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMdiWashingMachine,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text("Washing machine",
                          style: theme.textTheme.bodyLarge),
                    ),

                    Spacer(),
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,

                      padding: EdgeInsets.all(8.h),
                      onTap: () {
                        setState(() {
                          washingMachineCount =
                              washingMachineCount + 1;
                        });
                      },

                      child: CustomImageView(
                        imagePath: ImageConstant.imgEvaPlusFill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 12.h, top: 8.v, bottom: 7.v),
                      child: Text("$washingMachineCount",
                          style: theme.textTheme.titleMedium),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        onTap: () {
                          setState(() {
                            washingMachineCount = washingMachineCount > 1
                                ? washingMachineCount - 1
                                : 1;
                          });
                        },
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEvaMinusFill,
                        ),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildParkingButton(String text, bool value) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: isParkingSelected == value ? Colors.lightGreen : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isParkingSelected = value;
        });
      },
      child: Text(text),
    );
  }

  Widget _buildElevatorButton(String text, bool value) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: isElevatorSelected == value ? Colors.lightGreen : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isElevatorSelected = value;
        });
      },
      child: Text(text),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 20.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           CustomElevatedButton(
            width: 99.h,
            text: "Back",
            buttonStyle: CustomButtonStyles.fillPrimary,
            onPressed: () {
              onTapCalendar(context);
            },
          ),
          CustomElevatedButton(
            width: 130.h,
            text: "Continue",
            buttonStyle: CustomButtonStyles.fillPrimary,
            onPressed: () {
              onTapContinue(context);
            },
          ),
        ],
      ),
    );
  }

  onTapCalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  onTapTxtTwentyFourMillionTwentyTwoThou(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.datesScreen);
  }

  onTapBtnEvaPlusFill(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  onTapBtnEvaMinusFill(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  onTapBtnEvaPlusFill1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  onTapBtnEvaMinusFill1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pgScreen);
  }
}
