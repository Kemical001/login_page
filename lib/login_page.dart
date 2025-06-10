import 'package:app_class/components/my_button.dart';
import 'package:app_class/components/my_textfield.dart';
import 'package:app_class/components/square_tile.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  // TextEditingControllers for username and password
  // These controllers will be used to retrieve the text input by the user
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //user signin method
  void signUserIn() {
    // Implement your sign-in logic here
  }

  // This method will be called when the user taps the sign-in button
  // You can add your authentication logic here, such as calling an API or checking credentials
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              MyButton(onTap: signUserIn),

              SizedBox(height: 50),

              //or continue with
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("or continue with"),
                    ),
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google sign in button
                  SquareTile(imagePath: "assets/google.png"),

                  SizedBox(width: 25),

                  // apple sign in button
                  SquareTile(imagePath: "assets/apple.png"),
                ],
              ),

              SizedBox(height: 50),
              //not a member register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the registration page
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
