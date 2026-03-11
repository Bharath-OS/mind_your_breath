import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundColor),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {}, child: Text('Techniques')),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.help_outline, color: Colors.white),
                        iconSize: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.backgroundColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff4A2772),
                          blurRadius: 30,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Text(
                        'INHALE',
                        style: TextStyle(fontSize: 36, color: Color(0xffc57aff)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Text('05:00')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
