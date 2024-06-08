import 'package:flutter/material.dart';


class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined,
                  color:Colors.black38,
                size: 28,),
                SizedBox(height: 10,),
                Container(
                  width: 180,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 19,
                    ),
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.attachment_outlined,
                color: Colors.black38,
                    size: 25,),
                SizedBox(width: 10,),
                Icon(Icons.camera_alt,
                  color: Colors.black38,
                  size: 25,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF00887A),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.mic,
            size: 25,
            color: Colors.white,),
          )
        ],
      ),
    );
  }
}
