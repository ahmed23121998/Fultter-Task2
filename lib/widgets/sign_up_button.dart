import 'package:task_2/Screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen ()),
                  );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Don't have an account? ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const Text(
              'Sign Up!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}