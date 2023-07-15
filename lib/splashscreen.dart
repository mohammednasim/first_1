import 'dart:async';

import 'package:first_1/login_page.dart';
import 'package:flutter/material.dart';

class SplashApp extends StatefulWidget {

  const SplashApp({Key? key}) : super(key: key);

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  //loadscreen(){
  //  return Timer(
  //       Duration(seconds: 3),
  //           () => /login
  //   );
  // }
  void initState() {
// TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
// Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      Navigator.pushNamed(context, '/login');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: Text("Flutter",
        //     style: TextStyle(color: Colors.yellow),
        //   ),
        //   centerTitle: true,
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png',width: 200,height: 200,),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: LinearProgressIndicator(),
              )
              // Text(
              //   'Flutter',
              //   textAlign: TextAlign.justify,
              //   textScaleFactor: 5.0,
              //   style: TextStyle(
              //     color: Colors.blue,
              //   ),
              // ),
              // Text(
              //   "Internship",
              //   textAlign: TextAlign.justify,
              //   textScaleFactor: 4.0,
              //   style: TextStyle(color: Colors.black),
              // ),
            ],
          ),
        ));
  }
}
