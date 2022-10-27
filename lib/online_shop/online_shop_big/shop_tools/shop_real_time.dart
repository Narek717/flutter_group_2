import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StreamBuilderRealTimeClock extends StatefulWidget {

  const StreamBuilderRealTimeClock({Key? key}) : super(key: key);

  @override
  _StreamBuilderRealTimeClockState createState() =>
      _StreamBuilderRealTimeClockState();
}

class _StreamBuilderRealTimeClockState
    extends State<StreamBuilderRealTimeClock> {
  final bool _running = true;

  Stream<String> _clock() async* {
    while (_running) {
      await Future<void>.delayed(
        const Duration(seconds: 1),
      );
      DateTime now = DateTime.now();
      yield "${now.hour} : ${now.minute} : ${now.second}";
    }
  }
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: _clock(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              backgroundColor: Colors.indigo,
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
            ),
          );
        }
        return Column(
          children: [
            Text(
              snapshot.data as String,
              style:  GoogleFonts.akayaKanadaka(
                fontSize: 25,
                color: Colors.indigo,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        );
      },
    );
  }
}