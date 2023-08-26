import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = true;

  InputDecoration _inputDecoration(IconData icon, String labelText) {
    return InputDecoration(
      fillColor: Color(0xFFF1F6FB),
      filled: true,
      prefixIcon: Icon(icon, color: Color(0xFF8189B0)),
      labelText: labelText,
      labelStyle: TextStyle(color: Color(0xFF8189B0)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.hotel, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('KingsHotel', style: TextStyle(fontSize: 24.0)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 80.0),
            Text('Welcome Back!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
            SizedBox(height: 10.0),
            Text('Please enter your account here.', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 40.0),
            TextField(
              decoration: _inputDecoration(Icons.email, 'Email'),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: _isObscured,
              decoration: _inputDecoration(Icons.lock, 'Password').copyWith(
                suffixIcon: IconButton(
                  icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility, color: Color(0xFF8189B0)),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Forgot password?', style: TextStyle(color: Colors.blue[900])),
                  onPressed: () {
                    // TODO: Handle forgot password
                  },
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Handle login
                },
                child: Text('Login in'),
                style: ElevatedButton.styleFrom(primary: Colors.blue[900], onPrimary: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Don't have any account? "),
                  TextButton(
                    child: Text('Sign Up', style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold)),
                    onPressed: () {
                      // TODO: Handle sign up
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
