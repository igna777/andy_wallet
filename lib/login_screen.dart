import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  bool _oscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Colors.red),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: _oscureText,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    _oscureText = !_oscureText;
                  },
                  icon: Icon(
                      _oscureText ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          TextFormField()
        ],
      ),
    ));
  }
}
