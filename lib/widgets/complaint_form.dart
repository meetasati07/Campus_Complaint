import 'package:flutter/material.dart';

class ComplaintForm extends StatefulWidget {
  const ComplaintForm({super.key});

  @override
  State<ComplaintForm> createState() => _ComplaintFormState();
}

class _ComplaintFormState extends State<ComplaintForm> {
  final _formKey = GlobalKey<FormState>();

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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Title Required';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
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
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Issue Location',
              hintStyle: hintStyle,
              fillColor: Colors.blue,
              border: border,
              filled: true,
            ),
            style: inputTextStyle,
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Complaint Raised')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            ),
            child: Text('Raise \nComplaint', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
