import 'package:flutter/material.dart';
import 'package:flutterloginui/Screens/Login.dart';
import 'package:get/get.dart';

class Resetpassword extends StatefulWidget {
  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
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
                'Assets/Reset_Pass.jpg',
                height: 230.0,
                width: 250.0,
              ),
              Text(
                'Reset',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.grey),
                  labelText: 'New Password',
                  suffixIcon:
                      Icon(Icons.visibility_off_outlined, color: Colors.grey),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.grey),
                  labelText: 'Confirm Password',
                  suffixIcon:
                      Icon(Icons.visibility_off_outlined, color: Colors.grey),
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      isSubmitting = true;
                    });

                    Future.delayed(Duration(seconds: 3), () {
                      setState(() {
                        isSubmitting = false;
                      });

                      Get.to(LoginForm());
                    });
                  },
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      isSubmitting
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : SizedBox(),
                      Text(
                        'Submitting...',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
