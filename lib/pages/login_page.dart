import 'package:flutter/material.dart';
import 'package:tesla/data/entry_data.dart';
import 'package:tesla/pages/home_menu.dart';
import 'package:tesla/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double height = 60;
  double width = 375;
  bool isPressed = false;

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
            const SizedBox(height: 70),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade900,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-5, -5),
                    color: Colors.black.withOpacity(0.2)
                  ),

                  BoxShadow(
                    offset: const Offset(5, 5),
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 1
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    border: InputBorder.none,
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade900,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(-5, -5),
                      color: Colors.black.withOpacity(0.2)
                  ),

                  BoxShadow(
                      offset: const Offset(5, 5),
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 1
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                      ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        isPressed=!isPressed;
                        setState(() {});
                      },
                      icon: Icon(
                        isPressed ? Icons.visibility : Icons.visibility_off,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    )
                  ),
                  obscureText: isPressed,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 5, left: 220),
              child: TextButton(
                onPressed: (){},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.purple
                  ),
                ),
              )
            ),

            const SizedBox(height: 40),
            
            MaterialButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> const HomeMenu()
                    ),
                    (route)=>false
                );
              },
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            
            TextButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const RegisterPage()
                    )
                );
              },
              child: const Text(
                "Register",
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
