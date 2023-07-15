import 'package:flutter/material.dart';
class radiobutton extends StatefulWidget {
  const radiobutton({super.key});

  @override
  State<radiobutton> createState() => _radiobuttonState();
}

class _radiobuttonState extends State<radiobutton> {
  String?code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Text("Language",style: TextStyle(fontSize: 50,color: Colors.black),

            ),
        Divider(),
        RadioListTile(
        title: Text("python",style: TextStyle(fontSize: 30,color: Colors.red)),
          value: "python",
          groupValue: code,
          onChanged: (value){
          setState(() {
            code=value.toString();
          });
          },
          ),
          RadioListTile(
            title: Text("java",style: TextStyle(fontSize: 30,color: Colors.blue)),
            value: "java",
            groupValue: code,
            onChanged: (value){
              setState(() {
                code=value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("HTML",style: TextStyle(fontSize: 30,color: Colors.yellow)),
            value: "HTML",
            groupValue: code,
            onChanged: (value){
              setState(() {
                code=value.toString();
              });
            },
          ),


      ]
      ),
    );
  }
}
