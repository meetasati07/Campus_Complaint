import 'package:campus_complaint/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Name Required';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: hintStyle,
              fillColor: Colors.blue,
              border: border,
              filled: true,
            ),
            style: inputTextStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email Required';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Phone Number',
              hintStyle: hintStyle,
              fillColor: Colors.blue,
              border: border,
              filled: true,
            ),
            style: inputTextStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Phone Number Required';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: hintStyle,
              fillColor: Colors.blue,
              border: border,
              filled: true,
            ),
            style: inputTextStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password Required';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'College Name',
              hintStyle: hintStyle,
              fillColor: Colors.blue,
              border: border,
              filled: true,
            ),
            style: inputTextStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'College Name Required';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
              Text('You hereby accept the \nTerms and Conditions.')
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate() && isChecked) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login Successful')),
                );
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => BottomNavigation()),
                  ModalRoute.withName('/Home'),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            ),
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
