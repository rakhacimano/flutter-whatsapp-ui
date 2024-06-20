import 'package:flutter/material.dart';

class CommunitiesView extends StatelessWidget {
  const CommunitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _addNewCommunityButton(),
          const SizedBox(height: 12,),
          _communityList(),
          const SizedBox(height: 12,),
          _communityList(),
        ],
      ),
    );
  }

  Widget _addNewCommunityButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.people, color: Colors.grey, size: 40,),
                SizedBox(width: 12,),
                Text('New community', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _communityList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.book, color: Colors.green, size: 32,),
              ),
              _communityText(),
            ],
          )
        ],
      ),
    );
  }

  Widget _communityText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Flutter Community', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
        SizedBox(height: 4,),
        Text('This is a community for Flutter developers', style: TextStyle(color: Colors.black54, fontSize: 14),),
      ],
    );
  }
}