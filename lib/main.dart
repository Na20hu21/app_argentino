import 'package:flutter/material.dart';
import 'package:flutter_application_1/segunda_pantalla.dart';
import 'package:flutter_application_1/tercera_pantalla.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/subtle_background_image.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 70,),

                Text("NINGUN ARGENTINO SOLO EN EL MUNDO", style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                  fontSize: 19.0,
                )),
                SizedBox(height: 110,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("MAT", style: TextStyle(color: Colors.black87,
                        fontWeight: FontWeight.bold,fontSize: 50),),
                    Text("ECITO", style: TextStyle(color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold,fontSize: 50),)
                  ],),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Image.asset(
                            'assets/left_image.jpg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Image.asset(
                            'assets/right_image.jpg',
                            width: 120.0,
                            height: 120.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(height: 286),
                Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SegundaPantalla()),
                          );
                        },
                        child: Container(
                            color: Colors.lightBlueAccent,
                            height: 70,
                            width: 196,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.login, size: 30,)
                                  ],),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("REGISTRO", style: TextStyle(
                                        fontWeight: FontWeight.bold),)
                                  ],)
                              ],
                            )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TerceraPantalla()),
                          );
                        },
                        child: Container(
                            color: Colors.lightBlueAccent,
                            height: 70,
                            width: 196,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.mobile_friendly, size: 30,)
                                  ],),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("PEDIR/OFRECER UN MATE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),)
                                  ],)
                              ],
                            )
                        ),
                      ),
                    ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
