import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    Container(
        decoration: const BoxDecoration(
            gradient:  LinearGradient(
              begin:  Alignment.topLeft,
              end: Alignment.bottomCenter, colors: [Colors.pink, Colors.pinkAccent,Colors.white],
            )
        )
    );
    return MaterialApp(

      title: _title,
      home:  Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: const Center(
            child: MyWidget(),
          )),
    );
  }
}


class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  bool isCheckid = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.purple;
    }

    return Checkbox(
      checkColor: Colors.yellow,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isCheckid,
      onChanged: (bool? value) {
        setState(() {
          isCheckid = value!;
        });
      },
    );
  }
}