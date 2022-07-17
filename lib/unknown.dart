import 'package:flutter/material.dart';

class UnKnown extends StatelessWidget {
  const UnKnown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Unknown',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
