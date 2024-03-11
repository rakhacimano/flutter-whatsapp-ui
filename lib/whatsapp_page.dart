import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';
import 'package:whatsapp_clone/widgets/call_view.dart';
import 'package:whatsapp_clone/widgets/chat_view.dart';
import 'package:whatsapp_clone/widgets/status_view.dart';

class WhatsappPage extends StatefulWidget {
  const WhatsappPage({super.key});

  @override
  State<WhatsappPage> createState() => _WhatsappPageState();
}

class _WhatsappPageState extends State<WhatsappPage>
    with SingleTickerProviderStateMixin {
  final tabs = const [
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
  TabController? tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController?.index = 1;
    tabController?.addListener(() {
      setState(() {
        switch (tabController?.index) {
          case 0:
            fabIcon = Icons.camera_alt;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.timeline;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
            fabIcon = Icons.message;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: colorWhatsappGreen,
          foregroundColor: Colors.white,
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            controller: tabController,
            // indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
          )
        ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Icon(Icons.camera_alt),),
          ChatView(),
          StatusView(),
          CallView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorWhatsappLightGreen,
        foregroundColor: Colors.white,
        child: Icon(fabIcon),
      ),
    );
  }
}
