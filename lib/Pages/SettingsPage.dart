import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Settings",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
              children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "assets/images/IMG11.jpg",
                            height: 65,
                            width: 65,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AKASH MISHRA",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,

                                ),),
                              Text("Hi there, I am using WhatsApp!",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black54,
                                ),)
                            ],
                          ),),

                      ],
                    ),
                  ),
                Divider(),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.key),
                  ),
                  title: Text(
                    "Account",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "Privacy,Security,Change Number",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.chat_sharp),
                  ),
                  title: Text(
                    "Chats",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "Theme,Wallpaper,Chat History",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.notifications),
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "Messsage,Group & Call Tones",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.key),
                  ),
                  title: Text(
                    "Storage and Data",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "Network Usage, Auto-Download",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.help_outline_outlined),
                  ),
                  title: Text(
                    "Help Center",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "Help,Contact us,Privacy Policy",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.supervisor_account_rounded),
                  ),
                  title: Text(
                    "Invite a Friend",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  children: [
                    Text("from",style: TextStyle(fontSize: 15)),
                    Text("FaceBook",style: TextStyle(fontSize: 17,color: Color(0xFF0FCE5E),),),
                    SizedBox(height: 5,),
                    Text("Akash Mishra",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xFF0FCE5E)),)
                  ],
                ),)
              ]
          ),
        ),
      )
    );
  }
}
