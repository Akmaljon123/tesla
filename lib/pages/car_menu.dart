import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarMenu extends StatefulWidget {
  const CarMenu({super.key});

  @override
  State<CarMenu> createState() => _CarMenuState();
}

class _CarMenuState extends State<CarMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 40),
            const Column(
              children: [
                Text(
                  "Tesla",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Cybertruck",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              width: 350,
              height: 400,
              child: Image.asset(
                "assets/images/cybertruck-removebg-preview.png",
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.battery_100,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  "km",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
            const Text(
              "130",
              style: TextStyle(fontSize: 90, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
