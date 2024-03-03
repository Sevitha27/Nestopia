import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:sevitha_s_application2/firebase_options.dart';
import 'core/app_export.dart';
import 'package:flutter/material.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'sevitha_s_application2',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homepageScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
