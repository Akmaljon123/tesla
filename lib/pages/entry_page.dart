import 'package:flutter/material.dart';
import 'package:tesla/data/entry_data.dart';
import 'package:tesla/pages/login_page.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  void initState() {
    super.initState();
    _timeOf();
  }

  _timeOf() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EntryData.teslaIcon(),
            const SizedBox(height: 10),
            EntryData.teslaText()
          ],
        ),
      ),
    );
  }
}
