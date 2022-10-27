import 'package:flutter/material.dart';
import 'package:online_shop/online_shop/online_shop_big/online_shop.dart';
import 'package:online_shop/online_shop/online_shop_big/shop_tools/settings.dart';
import 'package:online_shop/simple_ui/regisN.dart';
import 'package:online_shop/simple_ui/settings_ui_N.dart';
import 'package:online_shop/tools/checkbox.dart';
import 'package:online_shop/whatsApp/whatsapp1.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Settings(),
       //home:  const ShopPage1(),
       // home: MyCheckBox(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  void _incrementCounter() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// → 1. git init
// → 2. git add .
// → 3. git commit -m "description"
// → 4. git branch -M branchName
// → 5. git remote add origin repoUrl
// → 6. git push -u origin branchName