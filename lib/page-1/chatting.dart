import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/message.dart';
import 'package:myapp/page-1/new_message.dart';
import 'package:myapp/utils.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:chat_bubbles/chat_bubbles.dart';



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
  String url = "";
  String topurl = "assets/page-1/images/puppy.jpg";

  void _successloadchat(){
    setState(() {
      url = "assets/page-1/images/successpuppy.jpg";
    });
  }
  void _restloadchat(){
    setState(() {
      url = "assets/page-1/images/restpuppy.jpg";
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar:AppBar(
        title: Text('멍뭉의 채팅방'),
        centerTitle: true,
      ) ,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            children: [
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle10CFK (1:273)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                      width: 79*fem,
                      height: 139*fem,
                      child: Image.asset(
                        'assets/page-1/images/rectangle-10.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogrouprzzhiDf (EFm3sDS2MxkqwyoDZ7RZzh)
                      margin: EdgeInsets.fromLTRB(0*fem, 31*fem, 0*fem, 25*fem),
                      width: 248*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // Eho (1:274)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 248*fem,
                                height: 83*fem,
                                child: Image.asset(
                                  'assets/page-1/images/.png',
                                  width: 248*fem,
                                  height: 83*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // Lkq (1:277)
                            left: 65*fem,
                            top: 12*fem,
                            child: Align(
                              child: SizedBox(
                                width: 150*fem,
                                height: 68*fem,
                                child: Text(
                                  '오늘의 미션은 산책하기 입니다!\n완료하셨나요?',
                                  style: SafeGoogleFont (
                                    'Cafe24 Oneprettynight',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: _successloadchat,
                  child: Text(
                    "멍뭉이에게 보여주기"
                  ),
              ),
              ElevatedButton(
                onPressed: _restloadchat,
                child: Text(
                    "오늘은 쉬어갈랭"
                ),
              ),
              new Image(image: AssetImage(url)),
              Flexible(
                child: Container(
                  child: Messages(),
                ),
              ),
              NewMessage(),
            ],
          ),
        ),
      )
    );
  }

}

