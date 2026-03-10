import 'package:campus_complaint/constants/my_issues.dart';
import 'package:flutter/material.dart';

class TrackComplaintPage extends StatelessWidget {
  const TrackComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Track Complaint')),
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
                                Text(
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
      bottomNavigationBar: BottomNavigationBar(
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
