import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  const NoData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Center(
          child: Text("No data yet!",
            style: TextStyle(
                fontSize: 25,
                color: Colors.grey
            ),
          ),
        ),
      ),
    );
  }
}
