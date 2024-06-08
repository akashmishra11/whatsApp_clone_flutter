import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/CallsWidget.dart';
import 'package:whatsapp_clone/Widgets/ChatsWidget.dart';

import '../Widgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: AppBar(
                  elevation: 0,
                  title: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text("WhatsApp",style: TextStyle(fontSize: 21),)),
                  actions: [
                    Padding(
                      padding:EdgeInsets.only(top:12,right:15),
                      child: Icon(Icons.search,size: 28,),
                    ),
                    PopupMenuButton(
                      onSelected: (selected){
                        if (selected==5){
                          Navigator.pushNamed(context, "settingsPage");
                        }
                      },
                      elevation: 10,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      iconSize: 28,
                      itemBuilder: (context)=> [
                        PopupMenuItem(
                          value: 1,
                          child: Text(
                            "New Group",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17),),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text(
                            "New Broadcast",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17),),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text(
                            "Linked devices",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17),),
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: Text(
                            "Starred Messages",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17),),
                        ),
                        PopupMenuItem(
                          value: 5,
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17),),
                        ),
                      ],

                    )
                  ],
                )),
            body: Column(
              children: [
                Container(
                  color: Color(0xFF075E55),
                  child: TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 4,
                    labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                      Tab(
                        child: Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(child:Text("CHATS",style: TextStyle(color: Colors.white))),
                                Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("10",style: TextStyle(color:Color(0xFF075E55),fontSize: 14 ),)))
                              ],
                            ),
                          ),
                        ),
                      ),

                      Tab(
                        child: Text("Status",style: TextStyle(color: Colors.white)),
                      ),
                      Tab(
                        child: Text("Calls",style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: TabBarView(

                  children: [
                    // Camera tab
                    Container(color: Colors.pink,),
                    // CHATS TAB
                    ChatsWidget(),
                    // Status
                    StatusWidget(),
                    // Calls
                    CallsWidget(),
                  ],
                ))
              ],
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFF075E55),
            child: Icon(Icons.message),
          ),



        ));
  }
}