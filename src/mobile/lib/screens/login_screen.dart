import 'dart:convert';

import 'package:app/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import '../services/api.dart';
import '../router/app_router.dart';
import '../widgets/app_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String errorMessage = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      errorMessage = '';
    });

    final email = emailController.text.trim();
    if (email.isEmpty) {
      setState(() {
        errorMessage = 'Please enter email and password.';
      });
      return;
    }

    final password = passwordController.text;
    if (password.isEmpty) {
      setState(() {
        errorMessage = 'Please enter email and password.';
      });
      return;
    }

    http.Response resp = await ApplicationAPI().signIn(
      email: email,
      password: password,
    );

    final data = jsonDecode(resp.body);

    if (data['message'] != null) {
      setState(() {
        errorMessage = data['message'] ?? 'Login failed.';
      });
      return;
    }

    final String token = data['token'];
    await StorageService().setToken(token);

    final user = data['user'];
    StorageService().setUserData(user);

    context.go(AppRoutes.landing);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: ListView(
        children: [
          const SizedBox(height: 16),
          Column(
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 12),
              FilledButton(onPressed: _submit, child: const Text('Login')),
            ],
          ),
        ],
      ),
    );
  }
}
