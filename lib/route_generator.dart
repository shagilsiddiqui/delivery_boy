
import 'package:deliveryboy/NewPassword.dart';
import 'package:deliveryboy/Upload.dart';
import 'package:deliveryboy/UploadDocument.dart';
import 'package:deliveryboy/documents.dart';
import 'package:deliveryboy/language.dart';
import 'package:deliveryboy/passwordChanged.dart';
import 'package:deliveryboy/src/OTP.dart';
import 'package:deliveryboy/thankyou.dart';
import 'package:flutter/material.dart';

import 'src/models/route_argument.dart';
import 'src/pages/forget_password.dart';
import 'src/pages/help.dart';
import 'src/pages/languages.dart';
import 'src/pages/login.dart';
import 'src/pages/notifications.dart';
import 'src/pages/order.dart';
import 'src/pages/pages.dart';
import 'src/pages/settings.dart';
import 'src/pages/signup.dart';
import 'src/pages/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/lang':
        return MaterialPageRoute(builder: (_) => language());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/document':
        return MaterialPageRoute(builder: (_) => Documents());
      case '/UploadDocument':
        return MaterialPageRoute(builder: (_) => UploadDocument());
      case '/upload':
        return MaterialPageRoute(builder: (_) => Upload());
      case '/thanks':
        return MaterialPageRoute(builder: (_) => Thankyou());
      case '/NewPassword':
        return MaterialPageRoute(builder: (_) => NewPassword());
      case '/PasswordChanged':
        return MaterialPageRoute(builder: (_) => PasswordChanged());
      case '/otp':
        return MaterialPageRoute(builder: (_) => OTP());
      case '/MobileVerification':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/MobileVerification2':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/Login':
        return MaterialPageRoute(builder: (_) => LoginWidget());
      case '/ForgetPassword':
        return MaterialPageRoute(builder: (_) => ForgetPasswordWidget());
      case '/Pages':
        return MaterialPageRoute(builder: (_) => PagesTestWidget(currentTab: args));
      case '/OrderDetails':
        return MaterialPageRoute(builder: (_) => OrderWidget(routeArgument: args as RouteArgument));
      case '/Notifications':
        return MaterialPageRoute(builder: (_) => NotificationsWidget());
      case '/Languages':
        return MaterialPageRoute(builder: (_) => LanguagesWidget());
      case '/Help':
        return MaterialPageRoute(builder: (_) => HelpWidget());
      case '/Settings':
        return MaterialPageRoute(builder: (_) => SettingsWidget());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
