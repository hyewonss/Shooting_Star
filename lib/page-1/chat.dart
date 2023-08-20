import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Scene extends StatefulWidget {
  const Scene({Key? key}) : super(key: key);

  @override
  State<Scene> createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Container(
            // missionFSZ (1:272)
            width: double.infinity,
            decoration: const BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupmqsrMkV (EFm45nuQDFevYKXyxGmqSR)
                  padding: EdgeInsets.fromLTRB(14*fem, 38*fem, 8*fem, 261*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogrouperdb5Rb (EFm3my5mV3zqZyFAPqERdb)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                        width: double.infinity,
                        height: 139*fem,
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
                      TextButton(
                        onPressed: (){
                          Container(
                              height: 150,
                              color: Colors.amberAccent);
                        },
                        child: Container(
                          // group48bRs (1:278)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 18*fem),
                          width: 331*fem,
                          height: 55*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xe0eddff0),
                            borderRadius: BorderRadius.circular(31*fem),
                          ),
                          child: Center(
                            child: Text(
                              '멍뭉이에게 보여주기',
                              style: SafeGoogleFont (
                                'Cafe24 Oneprettynight',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        // group49Rvh (1:281)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                        width: 331*fem,
                        height: 55*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffefe3f2),
                          borderRadius: BorderRadius.circular(31*fem),
                        ),
                        child: Center(
                          child: Text(
                            '오늘은 쉴래',
                            style: SafeGoogleFont (
                              'Cafe24 Oneprettynight',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // 입력창
                    width: 360*fem,
                    height: 59*fem,
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                  Icons.attach_file,
                                  color: Color(0xff313030)
                              ),
                              suffixIcon: Icon(
                                  Icons.send,
                                  color: Color(0xff313030)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xffDBE6FD),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }
}