import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _loginformkey=GlobalKey<FormState>();
  var Email=TextEditingController();
  var Password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Login Here"),
      ),
      body: Center(
        child: Form(
          key: _loginformkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Email,
              validator: (value ){
                if(value!.isEmpty){
                  return 'Enter you Email';
                }

              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Email')
              )
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Password,
                validator: (value) {
                  if(value!.isEmpty)
                  return'Enter you password';
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password")
                ),
              ),
            ) ,
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Align(
                 alignment: Alignment.topRight,
               ),
             ),
             SizedBox(
               width: 100,
               height: 20,
               child: ElevatedButton(onPressed: () {
                 setState(() {
                   if(_loginformkey.currentState!.validate()){
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:   Text('succesfully login')));
                   }

                 });
               }, child: Text("Login")),
             ),
             Align(
               alignment:Alignment.topRight ,
                 child:TextButton(onPressed: () {
                   Navigator.pushNamed(context, '/register');


                   }, child:Text("create account")),
             ),
            Text("cannot forget?")
          ],
        ),),
      ),
    );
  }
}
