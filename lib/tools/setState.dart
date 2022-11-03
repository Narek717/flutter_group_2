import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'my favourite fruit is ';
  String fruit = 'unknown';

  callback(favFruits) {
    setState(() {
      fruit = favFruits;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title + fruit),
        ),
        body: Center(
          child: Column(
            children: [
              FruitButton(fruit: 'Orange', callback: callback),
              FruitButton(fruit: 'Apple', callback: callback),
              FruitButton(fruit: 'Pear', callback: callback),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitButton extends StatelessWidget {
  final String fruit;
  final Function callback;

  FruitButton({required this.fruit, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback(fruit);
        },
        child: Text(fruit));
  }
}
