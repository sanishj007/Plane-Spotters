import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../sharedresources/constants.dart';

class lockScreen extends StatefulWidget {
  const lockScreen({Key? key}) : super(key: key);

  @override
  State<lockScreen> createState() => _lockScreenState();
}

class _lockScreenState extends State<lockScreen> {
  String email = '';
  String password = '';
  String firstName = '';
  String lastName = '';
  bool _visible = true;
  bool _signin = false;
  bool _signup = false;
  int animationspeed = 500;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double menuSpacing = screenHeight / 9;
    double menuwidth = screenWidth*2/3;


    return Scaffold(
      body:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/2017-05-06-09-55-35.jpg'),
                fit:BoxFit.fitHeight,
                alignment: Alignment.center
            ),
          ),
          child: Container(
            height: screenHeight,
            width: screenWidth,
            color: const Color.fromRGBO(30, 30, 30, .7),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, screenHeight / 5, 0, 6),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.airplanemode_active_sharp,size: 72.0, color: Colors.white),
                  SizedBox(height: 20,width: screenWidth,),
                  Text('Plane Spotters',style: TextStyle(fontSize: 42.0,letterSpacing: 2.0,color:Colors.white)),
                  SizedBox(height: screenHeight/12,width: screenWidth,),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: animationspeed),
                    opacity: _visible ? 1.0: 0.0,
                    child: AnimatedContainer(
                      width: menuwidth,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(30, 30, 30, .7),
                      ),
                      duration: Duration(milliseconds: animationspeed),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: _signin? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Log in', style: TextStyle(fontSize: 24.0,letterSpacing: 2.0,color:Colors.white)),
                            Divider(
                              color: Colors.grey[350],
                              thickness: 2,
                              endIndent: 5,
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 50,
                              child: TextFormField(
                                decoration:textInputDecoration.copyWith(hintText: 'Email',hintStyle: TextStyle(color:Colors.white)),
                                validator: (val) => (val!.isEmpty && val != null)? 'Enter an Email':null,
                                onChanged: (val){
                                  setState(() {
                                    email = val;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration:textInputDecoration.copyWith(hintText: 'Password',hintStyle: TextStyle(color:Colors.white)),
                              validator: (val) => (val!.isEmpty && val != null)? 'Enter a Password':null,
                              obscureText: true,
                              onChanged: (val){
                                setState(() {
                                  password = val;
                                });
                              },
                            ),
                            SizedBox(height: 10.0),
                            OutlinedButton(
                                onPressed: (() {

                                }),
                                child: Text("Sign In")
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ) : _signup? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Sign Up', style: TextStyle(fontSize: 24.0,letterSpacing: 2.0,color:Colors.white)),
                            Divider(
                              color: Colors.grey[350],
                              thickness: 2,
                              endIndent: 5,
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration:textInputDecoration.copyWith(hintText: 'First Name',hintStyle: TextStyle(color:Colors.white)),
                              validator: (val) => (val!.isEmpty && val != null)? 'Enter an First Name':null,
                              onChanged: (val){
                                setState(() {
                                  firstName = val;
                                });
                              },
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration:textInputDecoration.copyWith(hintText: 'Last Name',hintStyle: TextStyle(color:Colors.white)),
                              validator: (val) => (val!.isEmpty && val != null)? 'Enter in your First Name':null,
                              onChanged: (val){
                                setState(() {
                                  lastName = val;
                                });
                              },
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration:textInputDecoration.copyWith(hintText: 'Email',hintStyle: TextStyle(color:Colors.white)),
                              validator: (val) => (val!.isEmpty && val != null)? 'Enter an Email':null,
                              onChanged: (val){
                                setState(() {
                                  email = val;
                                });
                              },
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              decoration:textInputDecoration.copyWith(hintText: 'Password',hintStyle: TextStyle(color:Colors.white)),
                              validator: (val) => (val!.isEmpty && val != null)? 'Enter a Password':null,
                              obscureText: true,
                              onChanged: (val){
                                setState(() {
                                  password = val;
                                });
                              },
                            ),
                            SizedBox(height: 10.0),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Color.fromRGBO(30, 30, 30, .7),
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(),
                              ),
                              onPressed: (() {

                              }),
                              child: Text("Sign Up")
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ) : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SignInButton(
                              Buttons.Email,
                              onPressed: () {
                                setState(() => _visible = false );
                                Timer(Duration(milliseconds: animationspeed),() {
                                  setState(() => _signin = true );
                                });
                                Timer(Duration(milliseconds: animationspeed),() {
                                  setState(() {
                                    _visible = true;
                                  });
                                });
                              },
                            ),
                            SignInButtonBuilder(
                              onPressed: () {
                                setState(() {
                                  _visible = false;
                                });
                                Timer(Duration(milliseconds: animationspeed),() {
                                  setState(() {
                                    _signup = true;
                                    menuwidth = screenWidth*5/6;
                                  });
                                });
                                Timer(Duration(milliseconds: animationspeed),() {
                                  _visible = true;
                                });
                              },
                              text: "Sign up with Email",
                              icon: Icons.email_rounded,
                              backgroundColor: Colors.red[500]!,
                            ),
                            Divider(
                              color: Colors.grey[350],
                              thickness: 2,
                              endIndent: 5,
                            ),
                            SignInButton(
                              Buttons.Google,
                              onPressed: () {},
                            ),
                            SignInButton(
                              Buttons.FacebookNew,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}