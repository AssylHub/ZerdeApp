import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'common.dart';

class CodePage extends StatefulWidget {
  const CodePage({super.key});

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    // bool rememberPassword = true;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        children: [
          Image.asset(
            'assets/logo.png',
            scale: 1.3,
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Хабарламада келген кодты енгізіңіз",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Tirkelu(label: Text("Код"), hintText: "Кодты теріңіз"),
          const SizedBox(height: 5),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Маған код келмеді",
                ),
                Text("2.00")
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                text: Text('Отмена'),
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 3, 128, 231),
              ),
              const SizedBox(
                width: 40,
              ),
              Button(
                text: Text('Растау'),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
