import 'package:flutter/material.dart';
import 'dragon_curve.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fractals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: [
            CustomPaint(
              painter: DragonPainter(1100, 250, 16, Colors.transparent),
              child: Container(),
            ),
            CustomPaint(
              painter: DragonPainter(200, 150, 6, Colors.transparent),
              child: Container(),
            ),
            CustomPaint(
              painter: DragonPainter(300, 500, 10, Colors.white),
              child: Container(),
            ),
            CustomPaint(
              painter: DragonPainter(300, 500, 10, Colors.blueGrey),
              child: Container(),
            ),
            CustomPaint(
              painter: DragonPainter(600, 250, 13, Colors.yellow),
              child: Container(),
            ),
            CustomPaint(
              painter: DragonPainter(1300, 450, 14, Colors.deepOrangeAccent),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
