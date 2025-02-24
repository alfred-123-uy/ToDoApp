import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _header(),
              const SizedBox(height: 30),
              _inputFields(),
              const SizedBox(height: 20),
              _signupButton(),
              const SizedBox(height: 20),
              _socialSignup(),
              const SizedBox(height: 20),
              _loginOption(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return const Column(
      children: [
        Text(
          "Sign Up",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text("Create your account", style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }

  Widget _inputFields() {
    return Column(
      children: [
        _buildTextField("Username", Icons.person),
        const SizedBox(height: 12),
        _buildTextField("Email", Icons.email),
        const SizedBox(height: 12),
        _buildTextField("Password", Icons.lock, obscureText: true),
        const SizedBox(height: 12),
        _buildTextField("Confirm Password", Icons.lock, obscureText: true),
      ],
    );
  }

  Widget _buildTextField(String hintText, IconData icon, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.lightBlueAccent.withOpacity(0.1),
        filled: true,
        prefixIcon: Icon(icon),
      ),
    );
  }

  Widget _signupButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.lightBlueAccent,
        ),
        child: const Text("Sign Up", style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }

  Widget _socialSignup() {
    return Column(
      children: [
        const Text("Or", style: TextStyle(fontSize: 16, color: Colors.grey)),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.lightBlueAccent),
          ),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/login_signup/google.png', height: 24),
                const SizedBox(width: 12),
                const Text(
                  "Sign in with Google",
                  style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _loginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account? "),
        TextButton(
          onPressed: () {},
          child: const Text("Login", style: TextStyle(color: Colors.lightBlueAccent)),
        ),
      ],
    );
  }
}
