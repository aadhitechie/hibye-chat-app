import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:core';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: const EdgeInsets.all(8.0),
          child: Text('This works'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance
              .collection('chats/NPlvDDSumgvw7Ktw0FBw/messages')
              .snapshots()
              .listen((data) {
            log(data.docs[0]['text']);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
