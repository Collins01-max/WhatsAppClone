import 'package:flutter/material.dart';
import 'package:whats_app_clone/UI/Views/HomePage/calls_view.dart';
import 'package:whats_app_clone/UI/Views/HomePage/camera_view.dart';
import 'package:whats_app_clone/UI/Views/HomePage/chats_view.dart';
import 'package:whats_app_clone/UI/Views/HomePage/status_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Benin WhatsApp", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.tealAccent,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
                value: "New Group",
              ),
              PopupMenuItem(
                child: Text("New BroadCast"),
                value: "New BroadCast",
              ),
              PopupMenuItem(
                child: Text("WhatsApp Web"),
                value: "WhatsApp Web",
              ),
              PopupMenuItem(
                child: Text("Starred Messages"),
                value: "Starred Messages",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Row(
                children: [
                  Text(
                    "CHATS",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      "9",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  )
                ],
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [CameraView(), ChatsView(), StatusView(), CallsView()],
      ),
    ));
  }
}
