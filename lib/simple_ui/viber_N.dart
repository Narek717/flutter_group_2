import 'package:flutter/material.dart';

void main() {
  runApp(const ViberN());
}

class ViberN extends StatelessWidget {
  const ViberN({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Viber',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
                Icons.photo_camera,
                color: Colors.deepPurple
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
                Icons.search,
                color: Colors.deepPurple
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const  [

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
                padding: const EdgeInsets.only(top: 3),
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
              padding: const EdgeInsets.only(top: 3),
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
              padding: const EdgeInsets.only(top: 400),
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