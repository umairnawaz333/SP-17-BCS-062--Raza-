
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'home.dart';

void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home_screen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'images/dice.jpg'),
                height:300),
            Text("Raza Fayyaz Saddiqi",style:TextStyle(fontSize: 20)),
            SizedBox(height: 10,),
            CircularProgressIndicator()
          ],
        )
    );
  }
}
