import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_blog/home.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePagee()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            Image.asset('images/download.jpg',
            width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 350,
            ),
            SizedBox(height: 30,),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),

            )
          ],
        ),
      ),
    );
  }
}

