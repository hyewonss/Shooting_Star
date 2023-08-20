import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/message.dart';
import 'package:myapp/page-1/new_message.dart';
import 'package:myapp/utils.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';



class chatScreen extends StatefulWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar:AppBar(
        title: Text('멍뭉이와의 채팅방'),
        centerTitle: true,
      ) ,
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Messages()
            ),
            NewMessage(),
          ],
        ),
      )
    );
  }
}

