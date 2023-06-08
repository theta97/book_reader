import 'package:flutter/material.dart';
import 'package:ebook_reader/bottomnav.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'data_class.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  // runApp(const MyApp());
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>DataClass()),

  ],
      child:const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return MyHomePage(title: 'Ebook Reader',);
  }
}
