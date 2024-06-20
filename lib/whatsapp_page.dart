import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';
import 'package:whatsapp_clone/widgets/call_view.dart';
import 'package:whatsapp_clone/widgets/chat_view.dart';
import 'package:whatsapp_clone/widgets/communities_view.dart';
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
            fabIcon = Icons.message;
            break;
          case 1:
            fabIcon = Icons.circle_outlined;
            break;
          case 2:
            fabIcon = Icons.people;
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
        ),
      body: TabBarView(
        controller: tabController,
        children: const [
          ChatView(),
          StatusView(),
          CommunitiesView(),
          CallView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorWhatsappLightGreen,
        foregroundColor: Colors.white,
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectdItemColor: colorWhatsappGreen,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        currentIndex: tabController?.index ?? 1,
        onTap: (index) {
          tabController?.index = index;
        },
      ),
    );
  }
}
