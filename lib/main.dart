import 'package:flutter/material.dart';
import 'package:mind_your_breath/features/onboarding/onboarding1.dart';

void main(){
  runApp(MindYourBreath());
}

class MindYourBreath extends StatelessWidget {
  const MindYourBreath({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MindYourBreath(),
      home: OnBoarding1(),
    );
  }
}


