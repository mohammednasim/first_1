import 'package:flutter/material.dart';

class Buttonexample extends StatefulWidget {
  const Buttonexample({super.key});

  @override
  State<Buttonexample> createState() => _ButtonexampleState();
}

class _ButtonexampleState extends State<Buttonexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Click ME"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            TextButton(onPressed: () {}, child: Text("Close")),
            OutlinedButton(onPressed: () {

            }, child: Text("Sign Up"))

          ],
        )));
  }
}
