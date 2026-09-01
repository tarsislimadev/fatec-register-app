import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import '../services/api.dart';
import '../router/app_router.dart';
import '../widgets/app_scaffold.dart';

class SignUpFormScreen extends StatefulWidget {
  final String role;

  const SignUpFormScreen({super.key, required this.role});

  @override
  State<SignUpFormScreen> createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends State<SignUpFormScreen> {
  String errorMessage = '';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    http.Response checkRegisterResp = await ApplicationAPI().check(
      email: emailController.text.trim(),
    );

    final checkRegisterData = jsonDecode(checkRegisterResp.body);

    if (checkRegisterData['message'] != null) {
      setState(() {
        errorMessage = checkRegisterData['message'] ?? 'Registration failed.';
      });
      return;
    }

    if (!mounted) return;

    http.Response authRegisterResp = await ApplicationAPI().signUp(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      phone: phoneController.text.trim(),
      password: passwordController.text,
      confirm: confirmController.text,
    );

    final authRegisterData = jsonDecode(authRegisterResp.body);

    if (authRegisterData['message'] != null) {
      setState(() {
        errorMessage = authRegisterData['message'] ?? 'Registration failed.';
      });
      return;
    }

    context.go(AppRoutes.signin);
  }

  @override
  Widget build(BuildContext context) {
    // create an array of text fields based on the profile type
    List<Widget> textFields = [
      TextField(
        controller: nameController,
        decoration: const InputDecoration(labelText: 'Name'),
      ),
      const SizedBox(height: 12),
    ];

    return AppScaffold(
      child: ListView(
        children: [
          Column(
            children: [
              ...textFields,
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone number'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: confirmController,
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 12),
              FilledButton(onPressed: _submit, child: const Text('Sign In')),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () => context.go(AppRoutes.signup),
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
