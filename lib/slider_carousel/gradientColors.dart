import 'package:flutter/material.dart';
class GradColors extends StatefulWidget {
  const GradColors({Key? key}) : super(key: key);

  @override
  State<GradColors> createState() => _GradColorsState();
}
class _GradColorsState extends State<GradColors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Grdaient Colors'),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.blueAccent,
              Colors.purple
            ],
          )
        ),
      ),
    );
  }
}
