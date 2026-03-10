import 'package:campus_complaint/pages/landing_page.dart';
import 'package:campus_complaint/pages/settings_page.dart';
import 'package:campus_complaint/widgets/popup_menu.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenu(
      menuList: [
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.settings_rounded),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },
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
    );
  }
}
