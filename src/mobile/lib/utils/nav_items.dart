import 'package:flutter/material.dart';

import '../router/app_router.dart';

class NavItem {
  const NavItem({required this.label, required this.icon, required this.route});

  final String label;
  final IconData icon;
  final String route;
}

class ChatNavItem extends NavItem {
  ChatNavItem()
      : super(
            label: 'Chat',
            icon: Icons.local_post_office_outlined,
            route: AppRoutes.chatsList);
}

class ProfileNavItem extends NavItem {
  ProfileNavItem()
      : super(
            label: 'Profile',
            icon: Icons.person,
            route: AppRoutes.profile);
}

class HomeNavItem extends NavItem {
  HomeNavItem()
      : super(
            label: 'Home',
            icon: Icons.dashboard_outlined,
            route: AppRoutes.dashboard);
}
