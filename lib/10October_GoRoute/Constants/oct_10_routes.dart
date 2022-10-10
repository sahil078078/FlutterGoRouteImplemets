import 'package:flutter_go_route_implements/10October_GoRoute/Constants/oct_10_routes_pages.dart';
import 'package:flutter_go_route_implements/10October_GoRoute/Page/oct_10_page1.dart';
import 'package:flutter_go_route_implements/10October_GoRoute/Page/oct_10_page2.dart';
import 'package:flutter_go_route_implements/10October_GoRoute/Page/oct_10_page3.dart';
import 'package:flutter_go_route_implements/10October_GoRoute/Page/oct_10_page4.dart';
import 'package:flutter_go_route_implements/10October_GoRoute/Page/oct_10_page5.dart';
import 'package:go_router/go_router.dart';

import '../oct_10_go_route_home.dart';

final GoRouter oct10Route = GoRouter(
  initialLocation: Oct10RoutesPages.goRouterHomeScreen,
  routes: <GoRoute>[
    GoRoute(
      path: Oct10RoutesPages.goRouterHomeScreen,
      builder: (context, state) => const Oct10GoRouteHome(),
    ),
    GoRoute(
      name: Oct10RoutesPages.page1,
      path: Oct10RoutesPages.page1,
      builder: (context, state) => const Oct10Page1(),
    ),
    GoRoute(
      path: Oct10RoutesPages.page2,
      builder: (context, state) => const Oct10Page2(),
      routes: [
        GoRoute(
          path: Oct10RoutesPages.page3,
          builder: (context, state) => const Oct10Page3(),
        ),
        GoRoute(
          path: Oct10RoutesPages.page4,
          builder: (context, state) => const Oct10Page4(),
          routes: [
            GoRoute(
              path: Oct10RoutesPages.page5,
              builder: (context, state) => const Oct10Page5(),
            ),
          ],
        ),
      ],
    ),
  ],
);
