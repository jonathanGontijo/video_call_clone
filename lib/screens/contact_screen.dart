import 'package:flutter/material.dart';
import 'package:video_call/resources/firestore_methods.dart';
import 'package:intl/intl.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirestoreMethods().contact,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: (snapshot.data! as dynamic).docs.length,
            itemBuilder: (context, index)=> ListTile(
              title: Text('User: ${(snapshot.data! as dynamic).docs[index]['username']}',
              ),
              ), 
            );
        });
  }
}
