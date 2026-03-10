import 'package:campus_complaint/constants/my_issues.dart';
import 'package:campus_complaint/pages/landing_page.dart';
import 'package:campus_complaint/widgets/popup_menu.dart';
import 'package:flutter/material.dart';

class TrackComplaintPage extends StatelessWidget {
  const TrackComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Complaint'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: double.infinity,
              child: ListView.builder(
                itemCount: myIssues.length,
                itemBuilder: (context, index) {
                  final issue = myIssues[index];
                  return SizedBox(
                    height: 150,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText(
                                  '#Issue ${issue['issueNo']}',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  ' ${issue['problem']}',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Text(
                              '${issue['created']} days ago',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
