import 'package:flutter/material.dart';

void main(){
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MindYourBreath(),
    );
  }
}

class MindYourBreath extends StatelessWidget {
  const MindYourBreath({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Center(child: Text('Mind Your Breath Home Page'),),
      ),
    );
  }
}

