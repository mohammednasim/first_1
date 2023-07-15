import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(child: const Icon(Icons.search),onTap:(){

          }),
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
        itemBuilder: (context){
                return[
                  const PopupMenuItem(child: Text("New data")),
                  const PopupMenuItem(child: Text("New Broadcast")),
                  const PopupMenuItem(child: Text("Linked Devise")),
                  const PopupMenuItem(child: Text("Settings"))

                ];
            },
          ),

        ],
        toolbarHeight: 100,
        backgroundColor: const Color(0xff128C7E ),
        title: Text("WhatsApp" ,
        style: TextStyle(
            color: Colors.white,
                fontSize: 30,
            ),),


      ),
      body: const Center(child: Text('Hello WhatsApp',
      style: TextStyle(fontSize: 30)

      
      ),),

    );

  }
}
