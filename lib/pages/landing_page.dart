import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(title: Text('Campus Complaint')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 200,
                    child: Text(
                      'Do you have problem with your campus?',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    height: 300,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10,
                          top: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              image: AssetImage('assets/clg2.jpg'),
                              frameBuilder:
                                  (
                                    context,
                                    child,
                                    frame,
                                    wasSynchronouslyLoaded,
                                  ) {
                                    return AnimatedOpacity(
                                      opacity: frame == null ? 0 : 1,
                                      duration: Duration(milliseconds: 2000),
                                      child: child,
                                    );
                                  },
                            ),
                          ),
                        ),
                        Positioned(
                          right: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              image: AssetImage('assets/clg1.jpg'),
                              frameBuilder:
                                  (
                                    context,
                                    child,
                                    frame,
                                    wasSynchronouslyLoaded,
                                  ) {
                                    return AnimatedOpacity(
                                      opacity: frame == null ? 0 : 1,
                                      duration: Duration(milliseconds: 500),
                                      child: child,
                                    );
                                  },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: () {}, child: Text('Login')),
                    TextButton(onPressed: () {}, child: Text('Signup')),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Login or Signup to Raise your complaint',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
