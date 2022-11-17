import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          ),
          title: Text('John Khan'),
          subtitle: Text('Hi, How are you?'),
          trailing: Text('5:23 PM'),
        );
      },
    );
  }
}
