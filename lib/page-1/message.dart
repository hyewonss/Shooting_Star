import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/page-1/chat_bubble.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('chats')
            .orderBy('time', descending: true)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final chatsDocs = snapshot.data!.docs;

          return ListView.builder(
              reverse: true ,
              itemCount: chatsDocs.length,
              itemBuilder: (context, index){
                return chatBubble(chatsDocs[index]['text']);
              },
          );
        },
    );
  }
}