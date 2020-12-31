import 'package:flutter/material.dart';

class ChatsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ListTile(
        leading: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        ),
        title: Text("John Doe"),
        subtitle: Text("Yo! what's good  my nigga?..."),
        trailing: Column(
          children: [
            Text("${DateTime.now().hour}:${DateTime.now().minute} am"),
            Container(
              height: 25,
              width: 25,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}
