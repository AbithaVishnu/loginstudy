import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/ForgotPassword.dart';
import 'Screens/Login.dart';
import 'Screens/OTPscreen.dart';
import 'Screens/Resetpassword.dart';
import 'Screens/SignUp.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Intenship",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/Login', page: () => LoginForm(),transition: Transition.leftToRight),
        GetPage(name: '/SignUp', page: () => SignUpForm(),transition: Transition.fadeIn),
        GetPage(name: '/Forgotpassword', page: () => Forgotpassword(),transition: Transition.leftToRight),
        GetPage(name: '/OTPScreeen', page: () => OTPScreeen(),transition: Transition.leftToRight),
        GetPage(name: '/Resetpassword', page: () => Resetpassword(),transition: Transition.leftToRight),
      ],
      home: LoginForm(),
    );
  }
}
