import 'package:flutter/material.dart';
import 'package:my_page_view/initial_pages/page_second.dart';

class PageFirst extends StatelessWidget {
  const PageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('jump animation'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return const SecondPage();
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0,
                                0.0), // starting position of the new screen
                            end: Offset
                                .zero, // ending position of the new screen
                          ).animate(animation),
                          child: child,
                        );
                      },
                    ));
              },
              child: const Text('Go to Second Page'))
        ],
      ),
    );
  }
}
