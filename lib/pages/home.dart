import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/2017-05-06-09-55-35.jpg'),
            fit:BoxFit.fitHeight,
            alignment: Alignment.center
          ),
        ),
          child: Container(
            height: screenHeight,
            width: screenWidth,
            color: Color.fromRGBO(30, 30, 30, .7),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, screenHeight / 4, 0, 6),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.airplanemode_active_sharp,size: 60.0, color: Colors.grey[350],),
                  SizedBox(height: 20,width: screenWidth,),
                  Text('Plane Spotters',style: TextStyle(
                    fontSize: 30.0,letterSpacing: 2.0,color:Colors.grey[350],
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
