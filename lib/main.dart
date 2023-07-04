import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
         
          child: Center(
            child: Column(
              
              children: [
                 SizedBox(height:100 ,),
                Stack(
                  children: [
                    Container(
                      height: 400,
                      width: 250,
                      child: Card(
                        elevation: 5.0,
                          color: Colors.red[200],
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(120)))),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "assets/sandwitch.png",
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                      ),
                    ),
                    const Positioned.fill(
                      top: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Breakfast',
                              style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(height: 15,),
                             Text(
                              'Bread',
                              style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                            ),
                            ),
                             Text(
                              'Peanut butter',
                              style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                            ),
                            ),
                             Text(
                              'Apple',
                              style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   const Positioned.fill(
                    bottom: 30,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '525 \u2096\u2093\u2090\u2097',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                            ),
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
}
