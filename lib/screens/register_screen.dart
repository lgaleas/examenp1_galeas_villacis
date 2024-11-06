import 'package:flutter/material.dart';
import 'dart:ui';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  bool isDarkTheme = true;
  bool isYellowText = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
      isYellowText = !isYellowText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = isYellowText ? Colors.yellow : (isDarkTheme ? Colors.white : Colors.black);

    return Scaffold(
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/images/fondoApp.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(isDarkTheme ? 0.6 : 0.3),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.3,
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Image.asset(
                              'assets/images/circulo.png',
                              width: 120,
                              height: 120,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -20,
                          child: Image.asset(
                            'assets/images/decoracion circulo.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 55),
                            Text(
                              'Daily Recipe',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 20,
                                color: textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: textColor,
                          size: 24,
                        ),
                        hintText: "Full Name",
                        hintStyle: TextStyle(color: textColor.withOpacity(0.7)),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor.withOpacity(0.7)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor),
                        ),
                      ),
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: textColor,
                          size: 24,
                        ),
                        hintText: "Email Address",
                        hintStyle: TextStyle(color: textColor.withOpacity(0.7)),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor.withOpacity(0.7)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor),
                        ),
                      ),
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: textColor,
                          size: 24,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: textColor.withOpacity(0.7)),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor.withOpacity(0.7)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textColor),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: textColor,
                          size: 24,
                        ),
                      ),
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 16),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: "Already registered? ",
                    style: TextStyle(color: textColor, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Sign in.",
                        style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: Icon(isDarkTheme ? Icons.brightness_7 : Icons.brightness_2, color: textColor),
              onPressed: toggleTheme,
            ),
          ),
        ],
      ),
    );
  }
}
