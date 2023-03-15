import 'package:flutter/material.dart';
import 'package:untitled/utills/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool state = false;
  final _formKey = GlobalKey<FormState>();
  
  FormValidation(BuildContext context) async{
    if (_formKey.currentState!.validate()) {
      setState(() {
        state = true;
        print("In Upper State");
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homepage);

      setState(() {
        print("In Lower State");
        state = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("images/02.jpg",
              fit: BoxFit.cover),
              const SizedBox(height: 20.0),
              Text("Welcome $name",
              style: TextStyle(fontSize: 30),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text("Username",style: TextStyle(color: Colors.amber,fontSize: 15.0),)
                    ),
                    onChanged: (value) {
                      name = value;
                      print(name);
                      setState(() {});
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                      } else{
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text("Password",style: TextStyle(color: Colors.amber,fontSize: 15.0),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      } else if( value.length < 6){
                        return "Password length must be greater than 5";
                      } else{
                        return null;
                      }
                    },
                  )
                ],),
              ),
              SizedBox(height: 20.0,),
              Material(
                child: InkWell(
                  onTap: () => FormValidation(context),
//                await Navigator.pushNamed(context, MyRoutes.homepage);

                  child: AnimatedContainer(
                    height: 50,
                    width: state ? 50 : 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: state ? BorderRadius.circular(50) : BorderRadius.circular(8)
                    ),
                    alignment: Alignment.center,
                    duration: Duration(seconds: 1),
                    child: state ? Icon(Icons.done, color: Colors.white,) : Text("Go",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //   Navigator.pushNamed(context, MyRoutes.homepage);
              //   },
              //   child: const Text("Login"),
              //   style: TextButton.styleFrom(),
              // ),
            ],
          ),
        ),
    );
  }
}
