import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 5,left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  "Hi,Lucky, How Are You?",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 5,left: 52,bottom: 5),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text(
                "Hi,Mishra, I am fine and well, thanks for asking and what about you.I hope you will be fine also.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
