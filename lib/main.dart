import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(new MaterialApp(
      home: MainPage(),
    ));

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      image: Image.asset(
        'assets/logo.jpg',
        alignment: Alignment(0, 0),
      ),
      photoSize: 200,
      backgroundColor: Colors.white,
      navigateAfterSeconds: HomePage(),
      loadingText: Text('loading. . .'),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Center(child: Text("hello, congratulation")),
      ),
    );
  }
}
