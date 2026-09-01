import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_router.dart';
import '../widgets/app_scaffold.dart';
import '../services/storage_service.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  AppScaffold getSplashScreenWidget() {
    return const AppScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '', // fixme
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF22C55E),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StorageService().readAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return getSplashScreenWidget();
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.mounted) {
            if (!snapshot.hasData) {
              context.go(AppRoutes.signin);
              return;
            }

            context.go(AppRoutes.dashboard);
          }
        });

        return getSplashScreenWidget();
      },
    );
  }
}
