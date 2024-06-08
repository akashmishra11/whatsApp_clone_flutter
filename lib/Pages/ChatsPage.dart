import 'package:flutter/material.dart';

import '../Widgets/ChatBottomBar.dart';
import '../Widgets/ChatSample.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 5,top: 10),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back,size: 25,),
              ),
            ),
            leadingWidth: 20,
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/images/IMG1.jpg",
                      height: 45,
                      width: 45,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("AKASH MISHRA",style: TextStyle(fontSize:17,fontWeight: FontWeight.w500),),
                      Text("Online",style: TextStyle(fontSize:15,fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 25),
                child: Icon(Icons.video_call),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 15),
                child: Icon(Icons.call),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 5),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
               'assets/images/whatsapp_background.png'
            ),
            fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10,left: 4,right: 4,bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3C2),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                    ),
                    ]
                  ),
                  child: Text(
                      "Messages and Calls are end-to-end encrypted,No one outside of this chat can read or listen.Tap to learn more",
                    textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                ),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),

    );
  }
}
