import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/presentation/homepage_screen/homepage_screen.dart';
import 'package:sevitha_s_application2/presentation/frame_233_screen/frame_233_screen.dart';
import 'package:sevitha_s_application2/presentation/dates_screen/dates_screen.dart';
import 'package:sevitha_s_application2/presentation/room_mate_screen/room_mate_screen.dart';
import 'package:sevitha_s_application2/presentation/pg_screen/pg_screen.dart';
import 'package:sevitha_s_application2/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:sevitha_s_application2/presentation/blog_page_screen/blog_page_screen.dart';
import 'package:sevitha_s_application2/presentation/rent_screen/rent_screen.dart';
import 'package:sevitha_s_application2/presentation/list_property_screen/list_property_screen.dart';
import 'package:sevitha_s_application2/presentation/select_a_city_screen/select_a_city_screen.dart';
import 'package:sevitha_s_application2/presentation/filters_screen/filters_screen.dart';
import 'package:sevitha_s_application2/presentation/checkout_page_a_screen/checkout_page_a_screen.dart';
import 'package:sevitha_s_application2/presentation/property_details_screen/property_details_screen.dart';
import 'package:sevitha_s_application2/presentation/create_account_screen/create_account_screen.dart';
import 'package:sevitha_s_application2/presentation/checkout_page_b_1_screen/checkout_page_b_1_screen.dart';
import 'package:sevitha_s_application2/presentation/post_profile_screen/post_profile_screen.dart';
import 'package:sevitha_s_application2/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:sevitha_s_application2/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:sevitha_s_application2/presentation/log_in_screen/log_in_screen.dart';
import 'package:sevitha_s_application2/presentation/saved_screen/saved_screen.dart';
import 'package:sevitha_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';


class AppRoutes {
  static const String homepageScreen = '/homepage_screen';

  static const String frame233Screen = '/frame_233_screen';

  static const String datesScreen = '/dates_screen';

  static const String roomMateScreen = '/room_mate_screen';

  static const String pgScreen = '/pg_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String blogPageScreen = '/blog_page_screen';

  static const String rentScreen = '/rent_screen';

  static const String listPropertyScreen = '/list_property_screen';

  static const String selectACityScreen = '/select_a_city_screen';

  static const String filtersScreen = '/filters_screen';

  static const String checkoutPageAScreen = '/checkout_page_a_screen';

  static const String propertyDetailsScreen = '/property_details_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String checkoutPageB1Screen = '/checkout_page_b_1_screen';

  static const String postProfileScreen = '/post_profile_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String logInScreen = '/log_in_screen';

  static const String savedScreen = '/saved_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homepageScreen: (context) => HomepageScreen(),
    frame233Screen: (context) => Frame233Screen(),
    datesScreen: (context) => DatesScreen(),
    roomMateScreen: (context) => RoomMateScreen(),
    pgScreen: (context) => PgScreen(),
    chatbotScreen: (context) => ChatbotScreen(),
    blogPageScreen: (context) => BlogPageScreen(),
    rentScreen: (context) => RentScreen(),
    listPropertyScreen: (context) => ListPropertyScreen(),
    selectACityScreen: (context) => SelectACityScreen(),
    filtersScreen: (context) => FiltersScreen(),
    checkoutPageAScreen: (context) => CheckoutPageAScreen(),
    propertyDetailsScreen: (context) => PropertyDetailsScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
    checkoutPageB1Screen: (context) => CheckoutPageB1Screen(),
    postProfileScreen: (context) => PostProfileScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    confirmationScreen: (context) => ConfirmationScreen(),
    logInScreen: (context) => LogInScreen(),
    savedScreen: (context) => SavedScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()

  };
}
