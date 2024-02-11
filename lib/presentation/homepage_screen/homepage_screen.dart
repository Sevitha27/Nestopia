import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_search_view.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Nestopia'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white, // Set background color to green
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSignInRow(context),
                SizedBox(height: 4.v),
                _buildFirstScreenStack(context),
                _buildFirstScreenColumn(context),
                _buildBespokePartnershipsColumn(context),
                SizedBox(height: 7.v),
                _buildFooterStack(context),
                SizedBox(height: 25.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  /// Section Widget
  /* PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(), // Add a spacer to push the title to the right
          Text(
            "Nestopia",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Spacer(), // Add another spacer for additional spacing
        ],
      ),
      actions: [
        AppbarTrailingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v))
      ],
    );
  }*/




  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
        height: 36.v,
        width: 103.h,
        text: "Sign in",
        margin: EdgeInsets.only(top: 5.v, bottom: 36.v),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMediumBlack900,
        onPressed: () {
          onTapSignInButton(context);
        });
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      height: 41.v,
      width: 154.h,
      text: "Create an account",
      buttonStyle: CustomButtonStyles.fillPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.createAccountScreen);
      },);

  }

  /// Section Widget
  Widget _buildChatbotButton(BuildContext context) {
    return CustomElevatedButton(
        height: 29.v,
        width: 80.h,
        text: "Chatbot",
        margin: EdgeInsets.only(right: 15.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: CustomTextStyles.titleMediumBlack900,
        onPressed: () {
          onTapChatbotButton(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildSignInRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 34.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSignInButton(context),
              Column(children: [
                _buildCreateAccountButton(context),
                SizedBox(height: 7.v),
                _buildChatbotButton(context)
              ])
            ]));
  }

  /// Section Widget
  Widget _buildFirstScreenStack(BuildContext context) {
    return SizedBox(
        height: 748.v,
        width: 356.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 22.v),
                  decoration: AppDecoration.fillPrimary,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 214.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust the horizontal padding as needed
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search ",
                            borderDecoration: SearchViewStyleHelper.outlineGray,
                            filled: true,
                            fillColor: theme.colorScheme.onPrimary.withOpacity(1),
                          ),
                        ),

                        SizedBox(height: 32.v),
                        GestureDetector(
                            onTap: () {
                              onTapOne(context);
                            },
                            child: Container(
                                width: 339.h,
                                margin: EdgeInsets.only(right: 17.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 32.v),
                                decoration: AppDecoration.fillGreen.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                                child: Text("Rent",
                                    style: theme.textTheme.titleLarge))),
                        SizedBox(height: 20.v),
                        GestureDetector(
                            onTap: () {
                              onTapTwo(context);
                            },
                            child: Container(
                                width: 339.h,
                                margin: EdgeInsets.only(right: 17.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 31.v),
                                decoration: AppDecoration.fillGreen.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                                child: Text("PG",
                                    style: theme.textTheme.titleLarge))),
                        SizedBox(height: 20.v),
                        GestureDetector(
                            onTap: () {
                              onTapThree(context);
                            },
                            child: Container(
                                width: 339.h,
                                margin: EdgeInsets.only(right: 17.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 31.v),
                                decoration: AppDecoration.fillGreen.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                                child: Text("Find a Roommate",
                                    style: theme.textTheme.titleLarge))),
                        SizedBox(height: 20.v),
                        GestureDetector(
                            onTap: () {
                              onTapFour(context);
                            },
                            child: Container(
                                width: 339.h,
                                margin: EdgeInsets.only(right: 17.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 29.v),
                                decoration: AppDecoration.fillGreen.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      Text("Listing to find a Roommate",
                                          style: theme.textTheme.titleLarge)
                                    ])))
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 28.v, right: 47.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 32.h, vertical: 23.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderLR40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 6.v),
                        Container(
                            width: 217.h,
                            margin: EdgeInsets.only(left: 27.h),
                            child: Text("Welcome to Nestopia!",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: theme.textTheme.displayMedium!
                                    .copyWith(height: 1.15)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFirstScreenColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20.h),
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
              onTap: () {
                onTapOne1(context);
              },
              child: Container(
                  width: 338.h,
                  margin: EdgeInsets.only(right: 17.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 27.h, vertical: 31.v),
                  decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text("List Property", style: theme.textTheme.titleLarge)
                      ]))),
          SizedBox(height: 20.v),
          GestureDetector(
              onTap: () {
                onTapTwo1(context);
              },
              child: Container(
                  width: 338.h,
                  margin: EdgeInsets.only(right: 17.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 27.h, vertical: 29.v),
                  decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Text("Blogs", style: theme.textTheme.titleLarge)
                      ]))),
          SizedBox(height: 63.v)
        ]));
  }

  /// Section Widget
  Widget _buildStartBookingButton(BuildContext context) {
    return CustomElevatedButton(
        width: 156.h,
        text: "Start booking",
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapStartBookingButton(context);
        });
  }

  /// Section Widget
  Widget _buildBespokePartnershipsColumn(BuildContext context) {
    return Container(
        width: 355.h,
        margin: EdgeInsets.only(right: 20.h),
        padding: EdgeInsets.symmetric(vertical: 103.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgBespokePartnerships),
                fit: BoxFit.cover)),
        foregroundDecoration: AppDecoration.gradientBlackToBlack,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bespoke spaces",
                  style: CustomTextStyles.headlineLargeOnPrimary),
              SizedBox(height: 8.v),
              SizedBox(
                  width: 207.h,
                  child: Text("Find Comfortable places at affordable rates!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeOnPrimary
                          .copyWith(height: 1.25))),
              SizedBox(height: 39.v),
              _buildStartBookingButton(context),
              SizedBox(height: 76.v)
            ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email address",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildSubscribe(BuildContext context) {
    return CustomElevatedButton(
        width: 134.h,
        text: "Subscribe",
        margin: EdgeInsets.only(left: 100.h),
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Section Widget
  Widget _buildFooterStack(BuildContext context) {
    return SizedBox(
        height: 726.v,
        width: 355.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 44.v,
                        width: 46.h,
                        margin: EdgeInsets.only(left: 144.h)),
                    SizedBox(height: 54.v),
                    Padding(
                        padding: EdgeInsets.only(left: 79.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                  EdgeInsets.only(top: 1.v, bottom: 62.v),
                                  child: Text("Company",
                                      textAlign: TextAlign.right,
                                      style: theme.textTheme.titleMedium)),
                              Padding(
                                  padding: EdgeInsets.only(left: 40.h),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Home",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 11.v),
                                        Text("About us",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 12.v),
                                        Text("Our team",
                                            style: theme.textTheme.bodyLarge)
                                      ]))
                            ])),
                    SizedBox(height: 19.v),
                    Padding(
                        padding: EdgeInsets.only(left: 97.h),
                        child: Row(children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text("Guests",
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.titleMedium)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtBlog(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 40.h),
                                  child: Text("Blog",
                                      style: theme.textTheme.bodyLarge)))
                        ])),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 135.h),
                            child:
                            Text("FAQ", style: theme.textTheme.bodyLarge))),
                    SizedBox(height: 10.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 119.h),
                            child: Text("Career",
                                style: theme.textTheme.bodyLarge))),
                    SizedBox(height: 19.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 51.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Privacy",
                                          textAlign: TextAlign.right,
                                          style: theme.textTheme.titleMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 40.h),
                                      child: Text("Terms of Service",
                                          style: theme.textTheme.bodyLarge))
                                ]))),
                    SizedBox(height: 12.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 70.h),
                            child: Text("Privacy Policy",
                                style: theme.textTheme.bodyLarge))),
                    SizedBox(height: 39.v),
                    Padding(
                        padding: EdgeInsets.only(left: 113.h),
                        child: Text("Stay up to date",
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 6.v),
                    Container(
                        width: 266.h,
                        margin: EdgeInsets.only(left: 32.h, right: 55.h),
                        child: Text(
                            "Be the first to know about our newest houses",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(height: 1.25))),
                    SizedBox(height: 19.v),
                    _buildEmail(context),
                    SizedBox(height: 20.v),
                    _buildSubscribe(context),
                    SizedBox(height: 20.v)
                  ])),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 73.h, right: 93.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    /*Text("Contact number: 9999999999",
                        style: CustomTextStyles.bodyMediumGray900),
                    SizedBox(height: 12.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLink,
                          height: 32.adaptSize,
                          width: 32.adaptSize),
                      CustomImageView(
                          imagePath: ImageConstant.imgEvaFacebookFill,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.only(left: 12.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgEvaTwitterFill,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.only(left: 12.h))
                    ]),*/
                    SizedBox(height: 13.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Text("© 2023 Nestopia",
                                style: CustomTextStyles.bodyMediumGray900)))
                  ])))
        ]));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapSignInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the chatbotScreen when the action is triggered.
  onTapChatbotButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatbotScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }

  /// Navigates to the pgScreen when the action is triggered.
  onTapTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pgScreen);
  }

  /// Navigates to the roomMateScreen when the action is triggered.
  onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.roomMateScreen);
  }

  /// Navigates to the postProfileScreen when the action is triggered.
  onTapFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postProfileScreen);
  }

  /// Navigates to the listPropertyScreen when the action is triggered.
  onTapOne1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listPropertyScreen);
  }

  /// Navigates to the blogPageScreen when the action is triggered.
  onTapTwo1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.blogPageScreen);
  }

  /// Navigates to the filtersScreen when the action is triggered.
  onTapStartBookingButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filtersScreen);
  }

  /// Navigates to the blogPageScreen when the action is triggered.
  onTapTxtBlog(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.blogPageScreen);
  }
}
