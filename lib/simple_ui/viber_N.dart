import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/whatsApp/whatsapp3.dart';

class Viber extends StatelessWidget {
  const Viber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(218, 255, 255, 255),
          title: Text('Viber',
         textAlign: TextAlign.start,
         style: GoogleFonts.corben(
           fontSize: 20,
          fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                  Icons.photo_camera,
                  color: Colors.deepPurpleAccent
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                  Icons.search,
                  color: Colors.deepPurpleAccent
              ),
              onPressed: () {},
            )
          ],
        ),
            body: Chats(),
           bottomNavigationBar: BottomAppBar(
             child: Row(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 IconButton(
                   icon: const Icon(Icons.chat,
                 color: Colors.deepPurpleAccent),
                   onPressed: () {}),
                 IconButton(icon: const Icon(Icons.phone,
                     color: Colors.deepPurpleAccent),
                   onPressed: () {}),
                 IconButton(icon: const Icon(Icons.interests,
                     color: Colors.deepPurpleAccent),
                   onPressed: () {}),
                 IconButton(icon: const Icon(Icons.more_horiz,
                     color: Colors.deepPurpleAccent),
                   onPressed: () {}),
               ],
             ),
           )
             );
  }
}
