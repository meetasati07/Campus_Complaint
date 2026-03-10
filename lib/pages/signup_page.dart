import 'package:campus_complaint/pages/login_page.dart';
import 'package:campus_complaint/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle hintStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide.none,
    );
    final TextStyle inputTextStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(75),
                  child: Image(
                    image: AssetImage('assets/profile.jpg'),
                    height: 150,
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: hintStyle,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: hintStyle,
                          fillColor: Colors.blue,
                          border: border,
                          filled: true,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: hintStyle,
                          fillColor: Colors.blue,
                          border: border,
                          filled: true,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: hintStyle,
                          fillColor: Colors.blue,
                          border: border,
                          filled: true,
                        ),
                        style: inputTextStyle,
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'College Name',
                          hintStyle: hintStyle,
                          fillColor: Colors.blue,
                          border: border,
                          filled: true,
                        ),
                        style: inputTextStyle,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => BottomNavigation()),
                      ModalRoute.withName('/Home'),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  ),
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 10),
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => LoginPage()),
                    );
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
