import 'package:flutter/material.dart';
import 'common.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        children: [
          Image.asset('assets/logo.png'),
          Text("Тіркелу"),
          SizedBox(
            height: 40,
          ),
          Tirkelu(
            label: const Text("Аты жөні"),
            hintText: "Аты жөнінізді терініз",
          ),
          SizedBox(height: 20),
          Tirkelu(
            label: const Text("Телефон немесе email"),
            hintText: "Email енгізіңіз",
          ),
          SizedBox(height: 20),
          Tirkelu(
            label: const Text("Password"),
            hintText: "Password енгізіңіз",
          ),
          SizedBox(height: 30),
          const Text.rich(
              TextSpan(text: "Already have an account?  ", children: [
            TextSpan(
                text: "Log in",
                style: TextStyle(
                  color: Colors.blue,
                ))
          ])),
          SizedBox(height: 30),
          Button(
            text: Text("Тіркелу"),
            onPressed: () {
              Navigator.pushNamed(context, '/code');
            },
          ),
        ],
      ),
    );
  }
}
