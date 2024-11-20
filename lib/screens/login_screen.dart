import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true; // Controls password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color for the screen
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Simple Logo at the top without additional styling
              Image.asset(
                'assets/images/logo_image.jpeg',
                height: 150, // Adjust the height to your preference
              ),
              const SizedBox(height: 24), // Reduced height to push the logo up

              // Email button-like TextFormField
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // White background
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.brown), // Border color
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email:',
                    labelStyle: TextStyle(color: Colors.brown),
                    border: InputBorder.none, // Remove the underline
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Password button-like TextFormField with Eye Icon
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // White background
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.brown), // Border color
                ),
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password:',
                    labelStyle: const TextStyle(color: Colors.brown),
                    border: InputBorder.none, // Remove the underline
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.brown,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText; // Toggle password visibility
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Log In button with green background
              TextButton(
                onPressed: () {
                  // Handle login action
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(189, 176, 58, 1), // Set button color to green
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),

              // "Don't have an account?" and "Register here" text
              Column(
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle register action
                    },
                    child: const Text(
                      "Register here",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
