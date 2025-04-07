import 'package:flutter/material.dart';

void main() {
  runApp(BazarSadaaiApp());
}

class BazarSadaaiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bazar Sadaai',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Text
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    children: [
                      TextSpan(text: 'Bazar\n'),
                      TextSpan(text: 'SADAAI'),
                    ],
                  ),
                ),
                SizedBox(height: 50),

                // Admin Login Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Admin Login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text("Admin Login"),
                ),
                SizedBox(height: 15),

                // Field Team Login Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Field Team Login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text("Field Team Login"),
                ),
                SizedBox(height: 20),

                // Sign Up Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Need to create an account? "),
                    GestureDetector(
                      onTap: () {
                        // Navigate to Sign Up
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}