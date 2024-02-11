import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sevitha_s_application2/core/app_export.dart';
import 'package:sevitha_s_application2/presentation/homepage_screen/homepage_screen.dart';
import 'package:sevitha_s_application2/widgets/custom_elevated_button.dart';
import 'package:sevitha_s_application2/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LogInScreen extends StatefulWidget {
  // const HomePage({super.key});

  @override
  State<LogInScreen> createState() => _HomePageState();
}

class _HomePageState extends State<LogInScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google SignIn"),
      ),
      body: _user != null ? _userInfo() : _googleSignInButton(),
    );
  }

  Widget _googleSignInButton() {
    return Center(
      child: SizedBox(
        height: 50,
        child: SignInButton(
          Buttons.google,
          text: "Sign up with Google",
          onPressed: _handleGoogleSignIn,
        ),
      ),
    );
  }

  Widget _userInfo() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(_user!.photoURL!),
              ),
            ),
          ),
          Text(_user!.email!),
          Text(_user!.displayName ?? ""),
          MaterialButton(
            color: Colors.blueAccent,
            child: const Text("Sign out"),
            onPressed: _auth.signOut,
            // onPressed:(){
            //   // Navigate to the destination page
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => HomepageScreen()),
            //   );
            // },
          ) ],
      ),
    );
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    } catch (error) {
      print(error);
    }
  }
}

// // ignore_for_file: must_be_immutable
// class LogInScreen extends StatelessWidget {
//   LogInScreen({Key? key}) : super(key: key);
//
//   TextEditingController emailController = TextEditingController();
//
//   TextEditingController passwordController = TextEditingController();
//
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             body: SizedBox(
//                 width: SizeUtils.width,
//                 child: SingleChildScrollView(
//                     padding: EdgeInsets.only(
//                         bottom: MediaQuery.of(context).viewInsets.bottom),
//                     child: Form(
//                         key: _formKey,
//                         child: Container(
//                             width: 395.h,
//                             padding: EdgeInsets.all(10.h),
//                             child: Container(
//                                 padding: EdgeInsets.all(32.h),
//                                 decoration: AppDecoration.outlineGray4003f,
//                                 child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       SizedBox(height: 38.v),
//                                       Padding(
//                                           padding: EdgeInsets.only(
//                                               left: 18.h, right: 15.h),
//                                           child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               children: [
//                                                 Text(" Sign in with",
//                                                     style: theme
//                                                         .textTheme.bodyLarge),
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: 16.h,
//                                                         bottom: 1.v),
//                                                     child: Text("Email",
//                                                         style: CustomTextStyles
//                                                             .bodyLargePrimary)),
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: 16.h,
//                                                         bottom: 1.v),
//                                                     child: Text("Gmail",
//                                                         style: CustomTextStyles
//                                                             .bodyLargePrimary)),
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         left: 16.h,
//                                                         bottom: 1.v),
//                                                     child: Text("Facebook",
//                                                         style: CustomTextStyles
//                                                             .bodyLargePrimary))
//                                               ])),
//                                       SizedBox(height: 38.v),
//                                       CustomTextFormField(
//                                           controller: emailController,
//                                           hintText: "Email",
//                                           textInputType:
//                                               TextInputType.emailAddress,
//                                           borderDecoration:
//                                               TextFormFieldStyleHelper
//                                                   .outlineBlack),
//                                       SizedBox(height: 12.v),
//                                       CustomTextFormField(
//                                           controller: passwordController,
//                                           hintText: "Password",
//                                           textInputAction: TextInputAction.done,
//                                           textInputType:
//                                               TextInputType.visiblePassword,
//                                           obscureText: true),
//                                       SizedBox(height: 40.v),
//                                       CustomElevatedButton(
//                                           width: 103.h,
//                                           text: "Login",
//                                           buttonStyle:
//                                               CustomButtonStyles.fillPrimary,
//                                           onPressed: () {
//                                             // signInWithGoogle();
//                                           })
//                                     ]))))))));
//   }
//
//   /// Navigates to the paymentMethodScreen when the action is triggered.
//   onTapLogin(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
//   }
//   // signInWithGoogle() async
//   // {
//   //   GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();
//   //   GoogleSignInAuthentication? googleAuth= await googleUser?.authentication;
//   //   AuthCredential credential=GoogleAuthProvider.credential(
//   //     accessToken: googleAuth?.accessToken,
//   //     idToken: googleAuth?.idToken
//   //   );
//   //   UserCredential user= await FirebaseAuth.instance.signInWithCredential(credential);
//   //
//   // }
// }
//
//
