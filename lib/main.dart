import 'package:flutter/material.dart';
import 'package:zaad_tickets/screens/home_screen.dart';

import 'package:zaad_tickets/screens/loding_screen.dart';
import 'package:zaad_tickets/screens/selected-gate.dart';
import 'package:zaad_tickets/shard/style/colors.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: frestColors,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LodingScreen();
  }
}
