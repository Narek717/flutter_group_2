import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const CardSlider());
}

class CardSlider extends StatelessWidget {
  const CardSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();
  List<List<Color>> gradientColors = [];
  List<Color> gradient1 = [
   Colors.redAccent,
    Colors.orangeAccent
  ];
  List<Color> gradient2 = [
   Colors.blueAccent,
    Colors.indigo,
  ];
  List<Color> gradient3 = [
   Colors.green,
    Colors.lightGreenAccent
  ];
  List<Color> gradient4 = [
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
  ];

  @override
  void initState() {
    super.initState();
    gradientColors.addAll({
      gradient1,
      gradient2,
      gradient3,
      gradient4,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Credit Cards"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 5,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: gradientColors[
                            _random.nextInt(gradientColors.length)],
                          ),
                          borderRadius: BorderRadius.circular(7)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Credit Card ",
                              style: TextStyle(
                                fontSize: 30,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.white),
                            ),
                              Icon(Icons.credit_card,
                              color: Colors.orangeAccent,
                              size:40 ),
                            Text('1 2 3 4 x x x x x x x x 6 2 6 2',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  ),
          ),
        ),
    );
  }
}
