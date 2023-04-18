import 'package:flutter/material.dart';
import 'package:my_page_view/common_widgets/listview/tile/list_tile.dart';

class UseOfListview extends StatefulWidget {
  const UseOfListview({super.key});

  @override
  State<UseOfListview> createState() => _UseOfListviewState();
}

class _UseOfListviewState extends State<UseOfListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Of CommonList tile in ListView'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CommonListTile();
          }),
    );
  }
}
