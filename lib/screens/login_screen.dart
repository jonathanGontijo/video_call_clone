import 'package:flutter/material.dart';
import 'package:video_call/resources/auth_methods.dart';
import 'package:video_call/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Text(
                'Video Call App',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                'Start or join a meeting',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            CustomButton(
              text: 'Google Sign In',
              onPressed: () async {
                bool res = await _authMethods.signInWithGoogle(context);
                if (res) {
                  Navigator.pushNamed(context, '/home');
                }
              },
            ),
          ]),
        ],
      ),
    );
  }
}
