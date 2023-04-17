import 'package:flutter/material.dart';

class MyPageViewApp extends StatefulWidget {
  @override
  _MyPageViewAppState createState() => _MyPageViewAppState();
}

class _MyPageViewAppState extends State<MyPageViewApp> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              //   page.animateToPage(--pageIndex,
              //       duration: const Duration(milliseconds: 400),
              //       curve: Curves.bounceInOut);
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              //     curve: Curves.bounceInOut);
            },
          ),
        ],
      ),
      body: PageView(
        controller: page,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          Container(
            child: const Center(
                child: Text(
              "Page-1",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.deepOrange,
          ),
          Container(
            child: const Center(
                child: Text(
              "Page-2",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.grey,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-3",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.teal,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-4",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
