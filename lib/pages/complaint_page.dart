import 'package:campus_complaint/pages/landing_page.dart';
import 'package:campus_complaint/widgets/complaint_form.dart';
import 'package:campus_complaint/widgets/popup_menu.dart';
import 'package:flutter/material.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint'),
        actions: [
          PopupMenu(
            menuList: [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.settings_rounded),
                  title: Text('Settings'),
                  onTap: () {},
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => LandingPage()),
                      ModalRoute.withName('/Landing'),
                    );
                  },
                ),
              ),
            ],
            icon: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image(
                image: AssetImage('assets/profile.jpg'),
                height: 50,
                width: 50,
              ),
            ),
          ),
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
