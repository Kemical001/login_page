import 'package:app_class/components/my_textfield.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              //logo
              Image.asset("assets/logo.png", height: 150, width: 150),

              SizedBox(height: 50),

              Text(
                "welcome back, you have been missed!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              SizedBox(height: 25),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: "username",
                obscureText: false,
              ),

              SizedBox(height: 25),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: "password",
                obscureText: true,
              ),

              SizedBox(height: 25),

              //forgot passwprd_?
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),
              //sign in button

              //or continue with

              // google + apple sign in buttons

              //not a member register now
            ],
          ),
        ),
      ),
    );
  }
}
