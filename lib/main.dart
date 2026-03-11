import 'package:flutter/material.dart';
import 'landing.dart';
import 'home.dart';
import 'layanan_keliling.dart';
import 'pbb.dart';
import 'detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lapak Bantul',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const Landing(),
        '/home': (context) => const LapakBantulPage(),
        '/pbb': (context) => const PBBPage(),
        '/layanan': (context) => const LayananKelilingPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}