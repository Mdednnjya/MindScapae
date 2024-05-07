import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_Screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 74),
            Image.asset(
              'assets/images/logo_no_text.png',
              width: 300,
              height: 100,
            ),
            const SizedBox(height: 14),
            SvgPicture.asset('assets/images/auth/create_an account_text.svg'),
            const SizedBox(height: 32.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildTextFormField(
                    controller: _emailController,
                    labelText: 'Email address',
                    hintText: 'e.g. Enter email',
                  ),
                  const SizedBox(height: 25.0),
                  _buildTextFormField(
                    controller: _passwordController,
                    labelText: 'Password',
                    obscureText: _obscurePassword,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  _buildTextFormField(
                    controller: _confirmPasswordController,
                    labelText: 'Confirm Password',
                    obscureText: _obscureConfirmPassword,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            const Text(
              'or',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(
                  onPressed: () {
                    // Handle Facebook sign-up
                  },
                  asset: 'assets/images/auth/facebook_logo.svg',
                ),
                const SizedBox(width: 16.0),
                _buildSocialButton(
                  onPressed: () {
                    // Handle Twitter sign-up
                  },
                  asset: 'assets/images/auth/twitter_logo.svg',
                ),
                const SizedBox(width: 16.0),
                _buildSocialButton(
                  onPressed: () {
                    // Handle Google sign-up
                  },
                  asset: 'assets/images/auth/google_logo.svg',
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            SizedBox( //Signup
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle sign-up
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF41C9E2),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  textStyle: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            InkWell(
              onTap: () {
                // Navigate to login screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    String? hintText,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return SizedBox(
      width: 375.0,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xFFDFE2E5)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xFFDFE2E5)),
          ),
          suffixIcon: suffixIcon,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a value';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onPressed,
    required String asset,
  }) {
    return IconButton(
      icon: SvgPicture.asset(asset),
      onPressed: onPressed,
    );
  }
}