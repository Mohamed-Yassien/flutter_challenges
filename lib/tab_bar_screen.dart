import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 5,
          title: Text('WHATSAPP'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                child: Text('CHATS'),
              ),
              Tab(
                icon: Icon(Icons.signal_wifi_statusbar_4_bar),
                child: Text('STATUS'),
              ),
              Tab(
                icon: Icon(Icons.call),
                child: Text('CALLS'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.teal,
            ),
            Container(
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
