import 'package:flutter/material.dart';

void main() {
  runApp(const CheckBox());
}
class CheckBox extends StatelessWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
          body: Center(
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
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Checkbox(

      activeColor: Colors.red,
      checkColor: Colors.black,
      focusColor: Colors.yellow,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}