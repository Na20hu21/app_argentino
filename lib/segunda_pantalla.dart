import 'package:flutter/material.dart';
import 'package:flutter_application_1/tercera_pantalla.dart';

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MAT",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Text(
                "ECITO",
                style: TextStyle(
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/subtle_background_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TerceraPantalla()),
                      );
                    },
                    child: Container(
                      width: 285.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'DISTANCIA DE BUSQUEDA',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/removed.png',
                        width: 120.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent),
                        onPressed: () {},
                        child: Text(
                          'SOY….. ESTOY CERCA \nY TENGO MATE ¿QUERES?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/mafalda.png',
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent),
                        onPressed: () {},
                        child: Text(
                          'SOY….. ESTOY CERCA \n¿ME CONVIDAS UN MATE?',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
