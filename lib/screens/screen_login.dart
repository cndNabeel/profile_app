import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/screens/screen_forgot_pass.dart';
import 'package:email_validator/email_validator.dart';
import 'package:profile_app/screens/screen_profile.dart';

import '../widgets/helper.dart';

class login extends StatelessWidget {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  // This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Signin into your account',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 30.0),
                      Form(
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  controller: _user,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: helper().inputbox(
                                      'User Name', 'Enter your user name'),
                                ),
                                decoration: helper().boxshaddow(),
                              ),
                              SizedBox(height: 30.0),
                              Container(
                                child: TextField(
                                  controller: _pass,
                                  obscureText: true,
                                  decoration: helper().inputbox(
                                      'Password', 'Enter your password'),
                                ),
                                decoration: helper().boxshaddow(),
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordPage()),);
                                  },
                                  child: Text("Forgot your password?",
                                    style: TextStyle(color: Colors.grey,),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: helper().buttonBoxDecoration(
                                    context),
                                child: ElevatedButton(
                                  style: helper().buttonStyle(),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        40, 10, 40, 10),
                                    child: Text('Sign In'.toUpperCase(),
                                      style: TextStyle(fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>profile(user: _user.text,pass: _pass.text,)));
                                  },
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
