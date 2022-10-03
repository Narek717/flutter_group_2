import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp1());
}

class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Viber(),
        ),
      ),
    );
  }
}
class Viber extends StatelessWidget {
  const Viber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const  [
                  Text('Viber',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                  Icon(
                      Icons.photo_camera,
                      color: Colors.deepPurple
                  ),
                  Icon(
                      Icons.search,
                      color: Colors.deepPurple
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                  fixedSize: MaterialStateProperty.all(const Size(400, 50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const  [
                    Icon(
                      Icons.photo),
                    Text('  Jack',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black54),
                    fixedSize: MaterialStateProperty.all(const Size(400, 50)),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const  [
                      Icon(
                        Icons.photo,
                      ),
                      Text('  John',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                  fixedSize: MaterialStateProperty.all(const Size(400, 50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const  [
                    Icon(
                      Icons.photo,
                    ),
                    Text('  Bob',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const  [

                  Icon(
                      Icons.chat,
                      color: Colors.deepPurple
                  ),
                  Icon(
                      Icons.phone,
                      color: Colors.deepPurple
                  ),
                  Icon(
                    Icons.storage,
                    color: Colors.deepPurple,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}