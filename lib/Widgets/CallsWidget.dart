import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
            children: [
              for (int i=1;i<4;i++)
                Container(
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
                              "MS Dhoni",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,

                              ),),
                            Row(
                              children: [
                                Icon(Icons.call_made,color: Color(0xFF0FCE5E),size: 15,),
                                SizedBox(width: 10,),
                                Text(
                                  "(1),Today 12:05 PM",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),),
                              ],
                            )
                          ],
                        ),),
                      Spacer(),
                      Icon(Icons.call,color: Color(0xFF0FCE5E),)
                    ],
                  ),
                ),
              for (int i=4;i<12;i++)
                Container(
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
                              "Narendra Modi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,

                              ),),
                            Row(
                              children: [
                                Icon(Icons.call_received,color: Color(0xFF0FCE5E),size: 15,),
                                SizedBox(width: 10,),
                                Text(
                                  "(1),Today 12:40 PM",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  ),),
                              ],
                            )
                          ],
                        ),),
                      Spacer(),
                      Icon(Icons.video_call,color: Color(0xFF0FCE5E),)
                    ],
                  ),
                ),
            ]
        ),
      ),
    );
  }
}
