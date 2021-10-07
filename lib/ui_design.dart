import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(
         primaryColor: Colors.blue,
         visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
       home: MyHomePage(),
     );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton.extended(onPressed: (){},
         label: Text("Boost",),icon: Icon(Icons.near_me),),
     body: Column(
       children: <Widget>[
         MyAppBar(),
         SizedBox(
           height: 25,
         ),
         Padding(                         //line1
             padding: const EdgeInsets.symmetric(horizontal: 20),
         child : Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text("File",
         style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),
         ),
             IconButton(
               onPressed: (){},
               icon: Icon(Icons.tune,size: 30,color: Colors.black,)
             )
           ],
         ),
        ),
         Align(                             //line2
           alignment: Alignment.centerLeft,
           child : Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Text("Manager",
                 style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),
               ),
           ),
         ),
         SizedBox(
           height: 15,
         ),
         Align(                             //line2
           alignment: Alignment.centerLeft,
           child : Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Text("Let's clean And manage your file",
               style: TextStyle(fontSize: 15),
             ),
           ),
         ),
         SizedBox(
           height: 10,
         ),
         Container(
                margin: EdgeInsets.only(left: 10),
                height: 210,
            child  : Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,

                    children: <Widget>[
                           MyCards(mycolor:Color(0xff22293d),mycolor2:
                           Color(0xff434e6c),),
                           MyCards(mycolor:Color(0xff3787eb),mycolor2:
                           Color(0xff1b70da),),
                            MyCards(mycolor:Color(0xffff5a00),mycolor2:
                            Color(0xffc84e0c),),
                     ],
                 ),
              ),
            ),
         SizedBox(
           height:10 ,
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 28),
           child: Align(
             alignment: Alignment.centerLeft,
             child: Text("Categories",
             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
           ),
         ),
         SizedBox(
           height: 10,
         ),
         Container(
             padding:EdgeInsets.all(8),
           margin: EdgeInsets.symmetric(horizontal: 15),
           height: 50,
           width: double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.redAccent,
           ),
           child: Row(
             children: <Widget>[
               Container(
                 height: 40,
                 width: 40,
                 decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                   color: Colors.white,
                 ),
                 child: Center(
                  child: Icon(Icons.music_note,size: 25,color: Colors.black,),
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(" Music",style: TextStyle(fontWeight: FontWeight.w800,
                       color:Colors.black ),
                   ),
                   SizedBox(
                     height: 1,
                   ),
                   Text("223 Items",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),)
                 ],
               )
             ],
           )
         ),
         SizedBox(
           height: 12,
         ),
         Container(
             padding:EdgeInsets.all(8),
             margin: EdgeInsets.symmetric(horizontal: 15),
             height: 50,
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.redAccent,
             ),
             child: Row(
               children: <Widget>[
                 Container(
                   height: 40,
                   width: 40,
                   decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                   ),
                   child: Center(
                     child: Icon(Icons.videocam_outlined,size: 25,color: Colors.black,),
                   ),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text(" Videos",style: TextStyle(fontWeight: FontWeight.w800,
                         color:Colors.black ),
                     ),
                     SizedBox(
                       height: 1,
                     ),
                     Text("153 Items",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),)
                   ],
                 )
               ],
             )
         ),
       ],
       ),
     );
  }
}

class MyCards extends StatelessWidget {
  Color mycolor;
  Color mycolor2;
  MyCards({this.mycolor,this.mycolor2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      width: 150,
      decoration: BoxDecoration(
      color: Color(0xff22293d),
        borderRadius: BorderRadius.circular(25)
    ),
          child: Column(
             children: <Widget>[
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                          Text("Manager",style:TextStyle(
                              color: mycolor2,
                             fontSize: 15
                  ),
                ),
                 Icon(Icons.more_horiz,color: Colors.white,)
              ],
            ),
             SizedBox(
               height: 13,
             ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text("Large",style:TextStyle(
                       color: Colors.white,
                       fontSize: 17,
                     fontWeight: FontWeight.w600
                   ),
                   ),
                   Text("92",style:TextStyle(
                       color: Color(0xffcfff00),
                       fontSize: 23,
                       fontWeight: FontWeight.w600
                   ),
                   ),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text("files",style:TextStyle(
                       color: Colors.white,
                       fontSize: 17,
                       fontWeight: FontWeight.w600
                   ),
                   ),
                   Text("items",style:TextStyle(
                       color: mycolor2,
                       fontSize: 15,
                       fontWeight: FontWeight.w600
                   ),
                   ),
                 ],
               ),
               SizedBox(
                 height: 13,
               ),
            Container(
              height : 8,
            child : ClipRRect(
              borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.7,
             backgroundColor: mycolor2,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
            ),
            ),
            ),
               SizedBox(
                 height: 3,
               ),
          Align(
              alignment: Alignment.centerLeft,
                child :Text(
               "72.40GB / 128GBggg",style: TextStyle(
                              color: Colors.white,
                               fontSize: 10
                        ),)
          ),
               SizedBox(
                 height: 20,
               ),
               Container(
                      height: 30,
                      child: SliderButton(
                          action: () {},
                   label: Text("    >>>>",style: TextStyle(fontSize: 18),),
                        backgroundColor: mycolor2,
                   child: Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            height: double.infinity,
                            width: 60,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                     child: Center (
                          child: Text("Clean",style: TextStyle(color:mycolor2,
                              ),
                            ),
                          )
                        ),
                      )
                 )
             ],
          ),
      );
   }
}
     

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  IconButton(
                       onPressed: (){},
                            icon: Icon(Icons.arrow_left,size: 40,),
          ),
            Container(
                margin: EdgeInsets.only(right: 30),
                height: 30,
                width: 30,
                decoration:BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
                ) ,
               )
            ],
          ),
        ),
      );
    }
}


