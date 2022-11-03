import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (create) => FavouriteFruit(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My favourite fruit is ' +
              Provider.of<FavouriteFruit>(context).fruit),
        ),
        body: Center(
          child: Column(
            children: [
              FruitButton(fruit: 'Orange'),
              FruitButton(fruit: 'Apple'),
              FruitButton(fruit: 'Pear'),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitButton extends StatelessWidget {
  final String fruit;

  FruitButton({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Provider.of<FavouriteFruit>(context, listen: false)
              .changeFruit(fruit);
        },
        child: Text(fruit));
  }
}

class FavouriteFruit extends ChangeNotifier {
  String fruit = 'unknown';

  void changeFruit(String newFruit) {
    fruit = newFruit;
    notifyListeners();
  }
}
