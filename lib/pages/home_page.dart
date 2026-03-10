import 'package:campus_complaint/constants/all_issues.dart';
import 'package:campus_complaint/constants/my_issues.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      color: Theme.of(context).primaryColor,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, Meet'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Latest Issues', style: textStyle),
                Text(
                  'View All >',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final issue = allIssues[index];
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
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Issues', style: textStyle),
                Text(
                  'View All >',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myIssues.length,
                itemBuilder: (context, index) {
                  final issue = myIssues[index];
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
    );
  }
}
