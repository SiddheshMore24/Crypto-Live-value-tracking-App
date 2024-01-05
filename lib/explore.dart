import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xffFBC700),
            title: Text("Explore"),
          ),
          body: Center(
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
