import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: 395.h,
                            padding: EdgeInsets.all(10.h),
                            child: Container(
                                padding: EdgeInsets.all(32.h),
                                decoration: AppDecoration.outlineGray4003f,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 38.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h, right: 15.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(" Sign in with",
                                                    style: theme
                                                        .textTheme.bodyLarge),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h,
                                                        bottom: 1.v),
                                                    child: Text("Email",
                                                        style: CustomTextStyles
                                                            .bodyLargePrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h,
                                                        bottom: 1.v),
                                                    child: Text("Gmail",
                                                        style: CustomTextStyles
                                                            .bodyLargePrimary)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h,
                                                        bottom: 1.v),
                                                    child: Text("Facebook",
                                                        style: CustomTextStyles
                                                            .bodyLargePrimary))
                                              ])),
                                      SizedBox(height: 38.v),
                                      CustomTextFormField(
                                          controller: emailController,
                                          hintText: "Email",
                                          textInputType:
                                              TextInputType.emailAddress,
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlack),
                                      SizedBox(height: 12.v),
                                      CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "Password",
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: true),
                                      SizedBox(height: 40.v),
                                      CustomElevatedButton(
                                          width: 103.h,
                                          text: "Login",
                                          buttonStyle:
                                              CustomButtonStyles.fillPrimary,
                                          onPressed: () {
                                            onTapLogin(context);
                                          })
                                    ]))))))));
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }
}
