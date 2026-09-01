import 'package:app/screens/landing_screen.dart';
import 'package:app/screens/signup_form_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/login_screen.dart';
// import '../screens/chat_list_screen.dart';
// import '../screens/chat_detail_screen.dart';
// import '../screens/dashboard_screen.dart';

class AppRoutes {
  static const landing = '/'; // ok
  static const signin = '/signin';
  static const signup = '/signup';
  static const dashboard = '/dashboard';
  static const chatsList = '/chats';
  static const chatDetail = '/chats/:conversationId';
  static const profile = '/profile';
}

final appRouterProvider = GoRouter(
  initialLocation: AppRoutes.landing,
  routes: [
    GoRoute(
      path: AppRoutes.landing,
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: AppRoutes.signin,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) => SignUpFormScreen(role: state.uri.queryParameters['role']!),
    ),
    // GoRoute(
    //   path: AppRoutes.dashboard,
    //   builder: (context, state) => const DashboardScreen(),
    // ),
    // GoRoute(
    //   path: AppRoutes.chatsList,
    //   builder: (context, state) => const ChatListScreen(),
    // ),
    // GoRoute(
    //   path: AppRoutes.chatDetail,
    //   builder: (context, state) => ChatDetailScreen(conversationId: state.pathParameters['conversationId']!),
    // ),
    // GoRoute(
    //   path: AppRoutes.profile,
    //   builder: (context, state) => const ProfileScreen(),
    // ),
  ],
);
