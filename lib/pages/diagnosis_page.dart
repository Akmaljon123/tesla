import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({super.key});

  @override
  State<DiagnosisPage> createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.2),
                          offset: const Offset(-2, -2),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(6, 6),
                          blurRadius: 5)
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.profile_circled,
                        size: 30,
                        color: Colors.grey,
                      )),
                ),

                const Column(
                  children: [
                    Text(
                      "Cybertruck",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey
                      ),
                    ),

                    Text(
                      "Diagnosis",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),

                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.2),
                          offset: const Offset(-2, -2),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(6, 6),
                          blurRadius: 5)
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        size: 30,
                        color: Colors.grey,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
