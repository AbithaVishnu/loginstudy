import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ForgotPassword.dart';
import 'SignUp.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // Add form key

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Form(
              key: _formKey, // Assign the form key to the Form widget
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'Assets/Login.jpg', // Replace with your image path
                    height: 230.0,
                    width: 250.0,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.alternate_email, color: Colors.grey),
                      labelText: 'Email ID',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address';
                      }
                      if (!_isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.grey),
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off_outlined,
                          color: Colors.grey),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Forgotpassword());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.blue,
                      height: 50.0,
                      minWidth: 100.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.0,
                          width: 150.0,
                          color: Colors.black12,
                        ),
                        SizedBox(width: 2.0),
                        Expanded(
                          child: Text(
                            'OR',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.0),
                        Container(
                          height: 1.0,
                          width: 150.0,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Set the button shape
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'Assets/google-logo.png',
                            // Replace with your Google logo asset
                            height: 24.0,
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Logestics? '),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/SignUp');

                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isValidEmail(String email) {
    // Regular expression pattern for email validation
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[\w]{2,}$');
    return emailRegex.hasMatch(email);
  }
}
