import 'package:flutter/material.dart';

class IconChange extends StatefulWidget {
  const IconChange({Key? key}) : super(key: key);

  @override
  State<IconChange> createState() => _IconChangeState();
}

class _IconChangeState extends State<IconChange> {
  bool myIcon = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            myIcon = !myIcon;
          });
        },
        icon: myIcon
            ? const Icon(Icons.favorite_border, color: Colors.deepPurple)
            : const Icon(Icons.favorite, color: Colors.deepPurple));
  }
}
