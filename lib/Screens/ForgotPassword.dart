import 'package:flutter/material.dart';
import 'package:flutterloginui/Screens/OTPscreen.dart';
import 'package:get/get.dart';

class Forgotpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'Assets/3293465.jpg', // Replace with your image path
                height: 230.0,
                width: 250.0,
              ),
              Text(
                'Forgot',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              Text(
                'Password?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Don\'t worry! it happens.Please enter the address associated with your account.',
                style:
                    TextStyle(fontSize: 15, color: Colors.black, height: 1.5),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.alternate_email,
                    color: Colors.grey,
                  ),
                  labelText: 'Email ID/Mobile Number',
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: MaterialButton(
                  onPressed: () {
                    Get.to(OTPScreeen());
                  },
                  child: Text(
                    'Submit',
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
            ],
          ),
        ),
      ),
    );
  }
}
