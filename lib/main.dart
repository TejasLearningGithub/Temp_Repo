import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/container/container_common_screen.dart';
import 'package:my_page_view/common_widgets/listview/use_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CommonContainerScreen(),
    );
  }
}
