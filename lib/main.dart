import 'package:first_1/Registration.dart';
import 'package:first_1/button.dart';
import 'package:first_1/check_box.dart';
import 'package:first_1/login_page.dart';
import 'package:first_1/radiobutton.dart';
import 'package:first_1/splashscreen.dart';
import 'package:first_1/whatapp_template.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/Splash',
      routes: {
        '/Splash':(context) =>SplashApp(),
        '/login':(context) => login(),
        "/register":(context) => registration()
      },
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      //home:SplashApp()
    );
  }
}
