import 'package:flutter/material.dart';
import 'package:fogo_app/screen/HomeScreen.dart';

int main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  _MyApp createState() => _MyApp();

}
class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}