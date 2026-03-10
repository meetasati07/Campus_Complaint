import 'package:campus_complaint/constants/all_issues.dart';
import 'package:campus_complaint/constants/my_issues.dart';
import 'package:flutter/material.dart';

class ViewIssuesPage extends StatelessWidget {
  final String issueType;
  const ViewIssuesPage({super.key, required this.issueType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('View Issues')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 1000,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: issueType == 'my_issues'
                      ? myIssues.length
                      : allIssues.length,
                  itemBuilder: (context, index) {
                    final issue = issueType == 'my_issues'
                        ? myIssues[index]
                        : allIssues[index];
                    return SizedBox(
                      width: 150,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                '#Issue ${issue['issueNo']}',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${issue['problem']}',
                                overflow: TextOverflow.clip,
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                '${issue['created']} days ago',
                                style: TextStyle(fontSize: 12),
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
      ),
    );
  }
}
