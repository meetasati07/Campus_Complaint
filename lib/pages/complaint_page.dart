import 'package:campus_complaint/widgets/complaint_form.dart';
import 'package:campus_complaint/widgets/profile.dart';
import 'package:flutter/material.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint'),
        actions: [
          Profile()
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.all(24.0), child: ComplaintForm()),
        ],
      ),
    );
  }
}
