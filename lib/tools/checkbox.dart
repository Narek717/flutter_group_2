import 'package:flutter/material.dart';

void main() {
  runApp(const MyCheckBox());
}
class MyCheckBox extends StatelessWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
          body: Center(
            child: CheckboxW(),
          )),
    );
  }
}
class CheckboxW extends StatefulWidget {
  const CheckboxW({Key? key}) : super(key: key);

  @override
  State<CheckboxW> createState() {
    return _CheckboxWState();
  }
}

class _CheckboxWState extends State<CheckboxW> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Checkbox(

      activeColor: Colors.black,
      checkColor: Colors.grey,
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