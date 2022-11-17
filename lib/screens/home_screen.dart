import 'package:flutter/material.dart';
import 'package:whats_app_ui_flutter/screens/camera_screen.dart';
import 'package:whats_app_ui_flutter/screens/chat_list_screen.dart';
import 'package:whats_app_ui_flutter/screens/status_screen.dart';

import 'call_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                  size: 18,
                ),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search_rounded),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_rounded),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Linked devices'),
                ),
                PopupMenuItem(
                  value: '4',
                  child: Text('Starred messages'),
                ),
                PopupMenuItem(
                  value: '5',
                  child: Text('Settings'),
                ),
              ],
            ),
          ],
        ),
        body: const TabBarView(children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
