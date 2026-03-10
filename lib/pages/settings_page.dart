import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;
  bool _enableNotifications = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Switch(
                  value: _enableNotifications,
                  activeThumbColor: Colors.blue,
                  onChanged: (bool newValue) {
                    setState(() {
                      _enableNotifications = newValue;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Enable Notifications',
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Switch(
                  value: _darkMode,
                  activeThumbColor: Colors.blue,
                  onChanged: (bool newValue) {
                    setState(() {
                      _darkMode = newValue;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
