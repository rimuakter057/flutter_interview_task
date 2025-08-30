import 'package:flutter_interview_task/features/home/screens/home_screen.dart';
import 'package:flutter_interview_task/features/order/screens/order_status_screen.dart';
import 'package:flutter_interview_task/features/order/screens/tracking_proccess_screen.dart';
import 'package:go_router/go_router.dart';
import '../features/nav_bar/bottom_nav_bar.dart';
import '../features/order/screens/order_finish_screen.dart';
import '../features/order/screens/order_history_screen.dart';
import '../features/profile/screens/create_profile_screen.dart';
import '../features/profile/screens/my_profile_screens.dart';
import '../features/setting/screens/setting_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String orders = '/orders';
  static const String orderStatus = '/order-status';
  static const String orderFinish = '/order-finish';
  static const String trackingProcess = '/tracking-process';
  static const String setting = '/setting';
  static const String profile = '/profile';
  static const String createProfile = '/create-profile'; // standalone route
}

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.home,
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
              path: AppRoutes.home,
              builder: (context, state) => const HomeScreen(),
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
    GoRoute(
      path: AppRoutes.trackingProcess,
      builder: (context, state) => const TrackingProcessScreen(),
    ),
    GoRoute(
      path: AppRoutes.orderFinish,
      builder: (context, state) => const OrderFinishScreen(),
    ),
  ],
);

