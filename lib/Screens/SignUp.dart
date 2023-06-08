import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Login.dart';

class SignUpForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, height: 1.5);
    TextStyle linkStyle = TextStyle(color: Colors.blue, height: 1.5);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'Assets/SignUp.jpg', // Replace with your image path
                  height: 200.0,
                  width: 250.0,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.alternate_email,
                      color: Colors.grey,
                    ),
                    labelText: 'Email',
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
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person_pin_circle_outlined,
                      color: Colors.grey,
                    ),
                    labelText: 'FullName',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Fullname';
                    }

                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    labelText: 'Mobile',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Mobilenumber';
                    }

                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                RichText(
                  text: TextSpan(
                    style: defaultStyle,
                    children: <TextSpan>[
                      TextSpan(text: 'By Sign Up, you are agree to our '),
                      TextSpan(
                        text: 'Terms & conditions',
                        style: linkStyle,
                      ),
                      TextSpan(
                        text: ' and Privacy Policy',
                        style: linkStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.to(LoginForm());
                      }
                    },
                    child: Text(
                      'Continue',
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
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Joined Us before? '),
                    GestureDetector(
                      onTap: () {
                        Get.to(LoginForm());
                      },
                      child: Text(
                        'Login',
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
    );
  }
  bool _isValidEmail(String email) {
    // Regular expression pattern for email validation
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[\w]{2,}$');
    return emailRegex.hasMatch(email);
  }
}
