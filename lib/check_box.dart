import 'package:flutter/material.dart';
class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool check1=false;
  bool check2=false;
  bool check3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Text("java"),
          Checkbox(value: check1, onChanged: (value) {
           check1=!check1;
          },),
          Text("Flutter"),
          Checkbox(value: check2, onChanged: (value) {
            check2=!check2;
          },),
          Text("Python"),
          Checkbox(value: check3, onChanged: (value) {
            check3=!check3;
          },)


        ],
      ),
    ) ;
  }
}
