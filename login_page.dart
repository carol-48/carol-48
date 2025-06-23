// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';
import 'controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Instagram',
                style: TextStyle(fontSize: 40, fontFamily: 'Cookie'),
              ),
              SizedBox(height: 50),
              TextFormField(
                controller: idController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  hintText: 'Phone number, email, or username',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), // Border radius
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 25,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), // Border radius
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 25,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () async {
                  if (await Login().login(
                    idController.text.trim(),
                    passController.text.trim(),
                  )) {
                    idController.clear();
                    passController.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Username or Password is incorrect!'),
                        duration: Duration(seconds: 4),
                      ),
                    );
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
