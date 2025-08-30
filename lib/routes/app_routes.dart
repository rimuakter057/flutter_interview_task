import 'package:flutter_interview_task/features/order/screens/order_status_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/delivery/screens/delivery_screen.dart';
import '../features/nav_bar/bottom_nav_bar.dart';
import '../features/order/screens/order_history_screen.dart';

import '../features/profile/screens/create_profile_screen.dart';
import '../features/profile/screens/my_profile_screens.dart';
import '../features/setting/screens/setting_screen.dart';

class AppRoutes {
  static const String delivery = '/delivery';
  static const String orders = '/orders';
  static const String orderStatus = '/order-status';
  static const String setting = '/setting';
  static const String profile = '/profile';
  static const String createProfile = '/create-profile'; // standalone route
}

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.delivery,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },
      branches: [
        // Delivery
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.delivery,
              builder: (context, state) => const DeliveryScreen(),
            ),
          ],
        ),
        // Orders
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.orderStatus,
              builder: (context, state) => const OrderStatusScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.orders,
              builder: (context, state) => const OrderHistoryScreen(),
            ),
          ],
        ),
        // Setting
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.setting,
              builder: (context, state) => const SettingScreen(),
            ),
          ],
        ),
        // Profile
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => const MyProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    // Standalone route for CreateProfileScreen
    GoRoute(
      path: AppRoutes.createProfile,
      builder: (context, state) => const CreateProfileScreen(),
    ),
  ],
);

