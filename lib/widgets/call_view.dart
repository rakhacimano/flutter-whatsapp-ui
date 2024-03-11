import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call.dart';
import 'package:whatsapp_clone/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            color: Colors.grey,
            size: 56,
          ),
          title: Text(
            call.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            call.callDate,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
          trailing: const Icon(
            Icons.call,
          ),
        );
      },
    );
  }
}