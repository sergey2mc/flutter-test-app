import 'package:auto_route/auto_route.dart';

import '../../pages/auth/auth.connector.dart';
import '../../pages/home/home.connector.dart';
import '../../pages/page-1/page-1.page.dart';
import '../../pages/page-2/page-2.page.dart';
import '../guards/auth.guard.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<bool>(
      page: AuthPageConnector,
      name: 'AuthPageRoute',
      path: '/auth'
    ),

    AutoRoute<bool>(
      page: HomePageConnector,
      name: 'HomePageRoute',
      path: '/',
      guards: [AuthGuard],
      initial: true
    ),

    AutoRoute<bool>(
      page: Page1,
      path: 'page-1',
      guards: [AuthGuard]
    ),

    AutoRoute<bool>(
      page: Page2,
      path: 'page-2',
      guards: [AuthGuard]
    ),

    RedirectRoute(
      path: '*',
      redirectTo: '/'
    ),
  ],
)
class $AppRouter {}
