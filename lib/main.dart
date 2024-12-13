import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/pages/CategoryPage.dart';
import 'package:movies_app/pages/Homepage.dart';
import 'package:movies_app/pages/MoviePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build (BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xFF0F111D)
    )
    ,
    routes: {
    "/" : (context) => HomePage(),
    "categorypage" :(context) => CategoryPage(),
    "moviepage": (context) => MoviePage(),

    }
    );
  }
}