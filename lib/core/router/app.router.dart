import 'package:auto_route/auto_route.dart';

import '../../pages/auth/auth.connector.dart';
import '../../pages/home/home.connector.dart';
import '../../pages/page-1/page-1.page.dart';
import '../../pages/page-2/page-2.page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: AuthPageConnector,
      path: '/auth'
    ),

    AutoRoute(
      page: HomePageConnector,
      path: '/',
      initial: true
    ),

    AutoRoute(
      page: Page1,
      path: '/page-1'
    ),

    AutoRoute(
      page: Page2,
      path: '/page-2'
    ),

    RedirectRoute(
      path: '*',
      redirectTo: '/'
    ),
  ],
)
class $AppRouter {}
