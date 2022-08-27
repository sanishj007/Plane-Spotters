import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int loadingState = 0;


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
                  Icon(Icons.airplanemode_active_sharp,size: 72.0, color: Colors.grey[350],),
                  SizedBox(height: 20,width: screenWidth,),
                  Text('Plane Spotters',style: TextStyle(
                    fontSize: 42.0,letterSpacing: 2.0,color:Colors.grey[350],
                   ),
                  ),
                  SizedBox(height: screenHeight/7,width: screenWidth,),
                  Container(
                    width: screenWidth*2/3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(30, 30, 30, .7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SignInButton(
                            Buttons.Email,
                            onPressed: () {},
                          ),
                          SignInButtonBuilder(
                            onPressed: () {},
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
                ],
              ),
            ),
          )
      ),
    );
  }
}
