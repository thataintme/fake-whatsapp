// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Pages/CallsScreen.dart';
import 'Pages/CameraScreen.dart';
import 'Pages/ChatsScreen.dart';
import 'Pages/StatusScreen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 1,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Color.fromARGB(141, 0, 255, 170),
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          indicatorColor: Color.fromARGB(141, 0, 255, 170),
          indicatorWeight: 4,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => {}),
        backgroundColor: Color.fromARGB(141, 0, 255, 170),
        child: Icon(Icons.chat),
      ),
    );
  }
}
