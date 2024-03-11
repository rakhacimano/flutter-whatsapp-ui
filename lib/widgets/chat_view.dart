import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';
import 'package:whatsapp_clone/theme.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return ListTile(
          leading: Image.network(chat.image),
          title: Text(
            chat.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            chat.mostRecentMessage,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Text(
              chat.messageDate,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        );
      },
    );
  }
}
