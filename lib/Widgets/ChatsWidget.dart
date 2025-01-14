import 'package:flutter/material.dart';
class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            for (int i=1;i<12;i++)
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'chatsPage');
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                         "assets/images/IMG$i.jpg",
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
                            Text(
                              "Hi,Kya Haal Chaal Hai ?",

                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                              ),)
                          ],
                        ),),
                      Spacer(),
                      Column(
                        children: [
                          Text("12:15",
                            style: TextStyle(
                              fontSize: 14,
                            color: Color(0xFF0FCE5E),
                              fontWeight: FontWeight.w500,
                            ),),
                          SizedBox(height: 6,),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF0FCE5E),
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 15,),
                                                        ),
                            ),)
                        ],
                      ),

                    ],
                  ),
                ),
              ),
          ]
        ),
      ),
    );
  }
}
