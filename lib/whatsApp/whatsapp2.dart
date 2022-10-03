import 'package:flutter/material.dart';
import 'package:online_shop/whatsApp/whatsapp3.dart';

class ForChats extends StatelessWidget {
  const ForChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),

        )
      ),
      child: Chats(),
    );

  }
}
