import 'package:flutter/material.dart';
import 'package:fund_app/Examples/appbar.dart';
import 'package:fund_app/Examples/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExDrawer(),
    );
  }
}
