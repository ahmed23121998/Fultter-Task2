import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/form_section.dart';
import '../widgets/recover_password_button.dart';
import '../widgets/slider_section.dart';
import '../widgets/toggle_section.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/social_login_divider.dart';
import '../widgets/social_login_buttons.dart';
import '../widgets/sign_up_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  double _sliderValue = 200.0;
  bool _isChecked = true;
  bool _isSwitched = false;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderSection(
                  title: 'Welcome Back',
                  subtitle: 'Login to your account',
                ),
                const SizedBox(height: 32.0),
                FormSection(
                  emailController: _emailController,
                  passwordController: _passwordController,
                  isPasswordVisible: _isPasswordVisible,
                  togglePasswordVisibility: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                const RecoverPasswordButton(),
                const SizedBox(height: 16.0),
                SliderSection(
                  value: _sliderValue,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
                const SizedBox(height: 32.0),
                ToggleSection(
                  isChecked: _isChecked,
                  isSwitched: _isSwitched,
                  onCheckboxChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  onSwitchChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
                const SizedBox(height: 32.0),
                const SignInButton(),
                const SizedBox(height: 16.0),
                const SocialLoginDivider(),
                const SizedBox(height: 16.0),
                const SocialLoginButtons(),
                const SizedBox(height: 16.0),
                const SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
