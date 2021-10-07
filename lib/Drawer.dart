import 'package:flut_app/drawer_setting.dart';
import 'file:///C:/Users/admi/AndroidStudioProjects/flut_app/lib/QuizApp/quiz2page.dart';
import 'package:flut_app/app_screen/table_screen.dart';
import 'package:flut_app/login_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(
    MaterialApp(
      title: "My App",
      home: MyDrawer(),
    )
  );
}
class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDrawerState();
  }
}
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("My Personal App"),
    backgroundColor: Colors.redAccent,
     ),
     body: LoginPage(),
     drawer: Drawer(
       child: Column(
         children: <Widget>[
           Container(
             color: Colors.deepOrange,
             width: double.infinity,
             child: Column(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(top: 20,),
                   width: 85,
                   height: 100,
                   decoration: BoxDecoration (
                       shape:BoxShape.circle,
                       image: DecorationImage(
                        image: NetworkImage("https://yt3.ggpht.com/yti/ANoDKi7eQ7XXo1j1noEohzYgaS-4ySgyi09Iha56yW9MDg=s88-c-k-c0x00ffffff-no-rj-mo")
                       )
                    ),
                 ),
                 Text("bipinrawat084@gmail.com",style:
                 TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)
                 )
               ],
             ),
           ),
           ListTile(
             title: Text("Home",style: TextStyle(fontSize: 20),),
             leading: Icon(Icons.home),
             onTap: () {
               Navigator.of(context).pop();
               Navigator.push(context,
               MaterialPageRoute(builder: (context)=>HomePage()));
             }
           ),
           ListTile(
             title: Text("Subscription",style: TextStyle(fontSize: 20),),
             leading: Icon(Icons.subscriptions),
             onTap: () {
               Navigator.push(context,
               MaterialPageRoute(builder: (context) => SubscriptionPage()));
    },
           ),
               ListTile(
               title: Text("Account",style: TextStyle(fontSize: 20),),
               leading: Icon(Icons.account_box),
               onTap: () {
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>AccountPage()));
               },
               ),
               ListTile(
               title: Text("Notifications",style: TextStyle(fontSize: 20),),
               leading: Icon(Icons.notifications),
               onTap:  () {
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>NotificationPage()));
               },
               ),
               ListTile(
               title: Text("Payment Method",style: TextStyle(fontSize: 20),),
               leading: Icon(Icons.payment),
             onTap:  () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>PaymentPage()));
             },
           ),
           ListTile(
             title: Text("About Us",style: TextStyle(fontSize: 20),),
             leading: Icon(Icons.info),
             onTap:  () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>AboutPage()));
             },
           ),
           ListTile(
             title: Text("Help Center",style: TextStyle(fontSize: 20),),
             leading: Icon(Icons.help_center),
             onTap:() {
               Navigator.of(context).pop();
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => MyPageDetail()));
             }
             ),
           ListTile(
             title: Text("Logout",style: TextStyle(fontSize: 20),),
             leading: Icon(Icons.logout),
             onTap:() {
               Navigator.of(context).pop();
               Navigator.push(context,
               MaterialPageRoute(builder: (context)=>LogoutPage()));
             }
           )
         ],
       )
     ),
   );
  }
}
