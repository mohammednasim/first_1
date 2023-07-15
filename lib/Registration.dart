import 'package:flutter/material.dart';
class  registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  final _registratiomformkey=GlobalKey<FormState>();
  var name=TextEditingController();
  var phoneno=TextEditingController();
  var Email=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Signup Form", style: TextStyle(fontSize: 20),),
      ),
      body: Center(
        child: Form(
          key:_registratiomformkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Text("sign up form",style:TextStyle(color: Colors.red,fontSize: 20) ),
              Padding(
              padding: const EdgeInsets.all(8.0),

              child: TextFormField(
                controller: name,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'enter your name';
                    }
                  },

                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      label: Text('Enter Name Here',style: TextStyle(color: Colors.blue),)

                  )
              ),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(controller: phoneno,
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'enter your phoneno';
                      }
                    },

                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        label: Text('Mobile Here',style: TextStyle(color: Colors.blue),)
                    )
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(controller: Email,
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'enter your Email';
                      }
                    },

                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        label: Text('Email Here',style: TextStyle(color: Colors.blue),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'enter your password';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      label: Text("password",style: TextStyle(color: Colors.blue))
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
                width: 200,
                height: 40,

                child: ElevatedButton(onPressed: () {
                  setState(() {
                    if(_registratiomformkey.currentState!.validate());
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('succes')));
                    }
                  });

                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text("Login")),
              ),
              Align(
                alignment:Alignment.topRight ,
                child:TextButton(onPressed: () {

                }, child:Text("forgot")),
              ),
              Text("cannot forget?")
            ],
          ),),
      ),
    );
  }
}