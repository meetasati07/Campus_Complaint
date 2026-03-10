import 'package:flutter/material.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

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
      appBar: AppBar(title: Text('Complaint')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Title',
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
                    hintText: 'Description',
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
                    hintText: 'Image',
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
                    hintText: 'Issue Location',
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
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            ),
            child: Text('Raise \nComplaint', textAlign: TextAlign.center),
          ),
        ],
      ),
      
    );
  }
}
