import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _controller = TextEditingController();
  var _userEnterMessage = '';
  void _sendMessage(){
    FocusScope.of(context).unfocus();
    FirebaseFirestore.instance.collection('chats').add({
      'text' : _userEnterMessage,
      'time' : Timestamp.now(),
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
              child: TextField(
                maxLines: null,
                controller: _controller,
                decoration: InputDecoration(
                  labelText: '메세지 보내기...'
                ),
                onChanged: (value){
                  setState(() {
                    _userEnterMessage = value;
                  });
                },
              )
          ),
          IconButton(
            onPressed: _userEnterMessage.trim().isEmpty ? null : _sendMessage,
            icon: Icon(Icons.send),
            color: Color(0xff313030),
          ),
        ],
      ),
    );
  }
}
