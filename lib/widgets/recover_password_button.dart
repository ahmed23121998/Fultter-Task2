import 'package:flutter/material.dart';

class RecoverPasswordButton extends StatelessWidget {
  const RecoverPasswordButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          print('Recover Password pressed');
        },
        child: const Text(
          'Recover Password',
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ),
    );
  }
}
