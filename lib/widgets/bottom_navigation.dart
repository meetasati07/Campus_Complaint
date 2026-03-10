import 'package:campus_complaint/pages/complaint_page.dart';
import 'package:campus_complaint/pages/home_page.dart';
import 'package:campus_complaint/pages/track_complaint_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 0;

  List<Widget> pages = [HomePage(), ComplaintPage(), TrackComplaintPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentPage, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 36),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_problem_rounded, size: 36),
            label: 'Complaint',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_rounded, size: 36),
            label: 'Track',
          ),
        ],
      ),
    );
  }
}
