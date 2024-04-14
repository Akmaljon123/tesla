import 'package:flutter/material.dart';
import 'package:tesla/pages/entry_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EntryPage(),
    );
  }
}