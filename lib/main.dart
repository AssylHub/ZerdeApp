import 'package:demo2/mainpage.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'code.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zerde app",
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(),
        '/code': (context) => const CodePage(),
        '/home': (context) => const MainPage(),
      },
      home: const LoginPage(),
    )
  );
}

