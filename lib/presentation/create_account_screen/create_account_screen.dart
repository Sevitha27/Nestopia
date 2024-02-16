import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/custom_checkbox_button.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool mobile = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32.h, vertical: 28.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 43.v),
                                  Text("Create your account",
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 17.v),
                                  Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 8.h),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("or sign in with",
                                                style:
                                                theme.textTheme.bodyLarge),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("Email",
                                                    style: CustomTextStyles
                                                        .bodyLargePrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("Gmail",
                                                    style: CustomTextStyles
                                                        .bodyLargePrimary)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("Facebook",
                                                    style: CustomTextStyles
                                                        .bodyLargePrimary))
                                          ])),
                                  SizedBox(height: 38.v),
                                  _buildFirstName(context),
                                  SizedBox(height: 12.v),
                                  _buildLastName(context),
                                  SizedBox(height: 12.v),
                                  _buildEmail(context),
                                  SizedBox(height: 12.v),
                                  _buildPassword(context),
                                  SizedBox(height: 40.v),
                                  _buildMobile(context),
                                  SizedBox(height: 38.v),
                                  _buildCreateAccount(context),
                                  SizedBox(height: 42.v),
                                  Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text("Already have an account?",
                                                style:
                                                theme.textTheme.titleLarge),
                                            Padding(
                                                padding:
                                                EdgeInsets.only(left: 16.h),
                                                child: Text("Log in",
                                                    style: CustomTextStyles
                                                        .titleLargePrimary))
                                          ])),
                                  SizedBox(height: 37.v),
                                  Container(
                                      width: 244.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 33.h),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                "By creating an account you agree to our\n",
                                                style:
                                                theme.textTheme.bodyMedium),
                                            TextSpan(
                                                text: "Terms of Service",
                                                style: CustomTextStyles
                                                    .bodyMediumff064749
                                                    .copyWith(
                                                    decoration:
                                                    TextDecoration
                                                        .underline)),
                                            TextSpan(
                                                text: " and ",
                                                style:
                                                theme.textTheme.bodyMedium),
                                            TextSpan(
                                                text: "Privacy Policy",
                                                style: CustomTextStyles
                                                    .bodyMediumff064749
                                                    .copyWith(
                                                    decoration:
                                                    TextDecoration
                                                        .underline))
                                          ]),
                                          textAlign: TextAlign.center))
                                ])))))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
        controller: firstNameController, hintText: "First name");
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomTextFormField(
        controller: lastNameController, hintText: "Last name");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildMobile(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text:
                "I want to receive updates about offers, news, city launches, and exclusive deals",
                isExpandedText: true,
                value: mobile,
                onChange: (value) {
                  mobile = value;
                })));
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
        width: 172.h,
        text: "Create account",
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapCreateAccount(context);
        });
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    //Navigator.pushNamed(context, AppRoutes.accountCreatedScreen);
  }
}
