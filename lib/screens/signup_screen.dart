import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true; // Controls password visibility
  bool _obscureConfirmText = true; // Controls confirm password visibility

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
                height: 100, // Adjust the height to your preference
              ),
              const SizedBox(height: 24), // Reduced height to push the logo up

              // Name TextFormField
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // White background
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.brown), // Border color
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full Name:',
                    labelStyle: TextStyle(color: Colors.brown),
                    border: InputBorder.none, // Remove the underline
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Email TextFormField
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

              // Password TextFormField with Eye Icon
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
              const SizedBox(height: 16),

              // Confirm Password TextFormField with Eye Icon
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // White background
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.brown), // Border color
                ),
                child: TextFormField(
                  obscureText: _obscureConfirmText,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password:',
                    labelStyle: const TextStyle(color: Colors.brown),
                    border: InputBorder.none, // Remove the underline
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirmText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.brown,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureConfirmText = !_obscureConfirmText; // Toggle confirm password visibility
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Sign Up button with green background
              TextButton(
                onPressed: () {
                  // Handle signup action
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(189, 176, 58, 1), // Set button color to green
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),

              // "Already have an account?" and "Login" text
              Column(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to login screen
                      Navigator.pop(context); // You can replace this with a navigation action
                    },
                    child: const Text(
                      "Login",
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
