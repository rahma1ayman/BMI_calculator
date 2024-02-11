import 'package:flutter/material.dart';
import '../widgets/textField.dart';
import 'bmiScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formState,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('images/Cool wallpaper.jpeg'),
                    radius: 80),
                const SizedBox(
                  height: 50,
                ),
                const DesignedTextField(title: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                const DesignedTextField(title: 'Password'),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black),
                  child: TextButton(
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BmiScreen(),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
