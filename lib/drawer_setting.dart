import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome To Home Page"),),
        backgroundColor: Colors.amberAccent,
        body: Center(
          child: Text("We are Happy for You !"),
        )
    );
  }
}

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Subscribe here",),),
      backgroundColor: Colors.green,
      body: Center(
        child: Text("Subscription Needed for Ads free"),
      ),
    );
  }
}
class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Account Details"),),
       backgroundColor: Colors.greenAccent,
     body: Center(
       child: Text("Account is Empty"),
     )
   );
  }
}
class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Notification"),),
        backgroundColor: Colors.purpleAccent,
        body: Center(
          child: Text("Notification is off"),
        )
    );
  }
}
class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Payments"),),
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: Text("Payment accepted only in Online mode"),
        )
    );
  }
}
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("About Us"),),
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Text("We are serving best quaity Softwares"),
        )
    );
  }
}
class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Log Out Page"),),
        backgroundColor: Colors.indigoAccent,
        body: Center(
          child: Text("You're Logged Out Succesfully "),
        )
    );
  }
}