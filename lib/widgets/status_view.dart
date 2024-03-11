import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status.dart';
import 'package:whatsapp_clone/theme.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        final status = statusList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            color: Colors.grey,
            size: 56,
          ),
          title: Text(
            status.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            status.statusDate,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
        );
      },
    );
  }
}
