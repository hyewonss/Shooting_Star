import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
// import 'package:myapp/screens/chat_screen.dart';
// import 'package:myapp/screens/loginscreen.dart';
// import 'package:myapp/chat/message.dart';
// import 'package:myapp/page-1/login.dart';
// import 'package:myapp/page-1/character.dart';
// import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/chatting.dart';
import 'package:myapp/page-1/message.dart';
import 'package:myapp/page-1/new_message.dart';
// import 'package:myapp/page-1/.dart';
// import 'package:myapp/page-1/info.dart';
// import 'package:myapp/page-1/-pcq.dart';
// import 'package:myapp/page-1/-ABT.dart';
// import 'package:myapp/page-1/-TmT.dart';
// import 'package:myapp/page-1/-2oB.dart';
// import 'package:myapp/page-1/-8Ad.dart';
// import 'package:myapp/page-1/-Gsj.dart';
// import 'package:myapp/page-1/-LbK.dart';


void main() async{
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp();
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'ShootingStar',
			debugShowCheckedModeBanner: false,
			scrollBehavior: MyCustomScrollBehavior(),
			theme: ThemeData(
				primarySwatch: Colors.blueGrey,
			),
			home: chatScreen()
		);
	}
}

