import 'package:calculator_app/screens/home_page.dart';
import 'package:flutter/material.dart';

// Widgets are the building blocks that make up the visual components of an app.
// Examples of stateless widgets are Text,Icon,IconButton,Container,RaisedButton
//Examples of stateful widgets are Radio, InkWell, Form, TextField, Slider

// abstract and concrete interface
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      // home: MyHomePage('Flutter Demo Home Page',"hdh"), /* positional argument  */
      home: MyHomePage(title: 'Flutter challenge'), /* parameter argument  */
    );
  }
}
