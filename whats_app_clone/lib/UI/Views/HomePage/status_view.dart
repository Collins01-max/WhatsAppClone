import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      ),
    );
  }
}
