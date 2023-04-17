import 'package:flutter/material.dart';


class ExSecond extends StatefulWidget {
  const ExSecond({super.key});

  @override
  State<ExSecond> createState() => _ExSecondState();
}

class _ExSecondState extends State<ExSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Sending Using Flutter'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Do Email',
              ),
            ),
          )
        ],
      ),
    );
  }
}
