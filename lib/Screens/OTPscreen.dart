import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'Resetpassword.dart';

class OTPScreeen extends StatelessWidget {
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
                'Assets/OTP.jpg', // Replace with your image path
                height: 230.0,
                width: 250.0,
              ),
              Text(
                'Enter OTP',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'An 4 digit code has been sent to +91 7447753876.',
                style: TextStyle(fontSize: 18, color: Colors.grey, height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: Colors.black,
                    fillColor: Colors.white,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: Colors.grey,

                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    filled: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: Row(
                      children: [
                        TextButton(
                          child: Text(
                            "Send again",
                            style: TextStyle(
                                fontSize: 11.96, fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(Resetpassword());
                      },
                      child: Text(
                        'Verify',
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
            ],
          ),
        ),
      ),
    );
  }
}
