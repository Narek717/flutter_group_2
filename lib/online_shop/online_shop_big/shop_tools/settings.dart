import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/tools/checkbox.dart';

 class Settings extends StatefulWidget {
   const Settings({Key? key}) : super(key: key);

   @override
   State<Settings> createState() => _SettingsState();
 }

 class _SettingsState extends State<Settings> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text('Settings',
         style: GoogleFonts.assistant(
           color: Colors.black,
           fontSize: 30,
           fontWeight: FontWeight.bold,
         ),
         ),
       ),
       body: Padding(
         padding: const EdgeInsets.all(1),
         child: Container(
         decoration: const BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [
                 Colors.white,
                 Colors.black,
               ],
             )
         ),
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Night background',
                  style: GoogleFonts.asul(
                  fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Transform.scale(
                    scale: 1.3,
                  child: const CheckboxW()
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Turn off all sounds',
                    style: GoogleFonts.asul(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Transform.scale(
                      scale: 1.3,
                      child: const CheckboxW()
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Animation',
                    style: GoogleFonts.asul(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Transform.scale(
                      scale: 1.3,
                      child: const CheckboxW()
                  ),
                ],
              ),
            ],
           ),
         ),
       ),
       ),
     );
   }
 }
