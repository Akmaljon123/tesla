import 'package:flutter/material.dart';
import 'package:tesla/data/entry_data.dart';
import 'package:tesla/pages/home_menu.dart';
import 'package:tesla/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EntryData.teslaIcon(),
            const SizedBox(height: 10),
            EntryData.teslaText(),
            const SizedBox(height: 40),
        
            EntryData.textField("Name"),
            const SizedBox(height: 30),
            EntryData.textField("Username"),
            const SizedBox(height: 30),
            EntryData.textField("Car model"),
            const SizedBox(height: 30),
            EntryData.textField("Password"),
            const SizedBox(height: 30),


            Container(
              height: EntryData.height,
              width: EntryData.width,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)
              ),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>const LoginPage()
                    ),
                      (route)=>false
                  );
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              )
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>const LoginPage()
                    ),

                );
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
