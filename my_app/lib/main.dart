import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/View/HomeScreen.dart';

void main() {
  runApp(ProviderScope(child: const  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data!',
      home: Homescreen() ,
    );
  }
}


  