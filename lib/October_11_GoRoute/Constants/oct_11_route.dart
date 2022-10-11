import 'package:flutter_go_route_implements/October_11_GoRoute/Constants/oct_11_route_page.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/nodata_page.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/oct_11_page1.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/oct_11_page2.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/oct_11_page3.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/oct_11_page4.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/oct_11_page5.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Pages/oct_11_page6.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/oct_11_route_home.dart';
import 'package:go_router/go_router.dart';

final GoRouter oct11Route = GoRouter(
  initialLocation: Oct11RoutePages.oct11GoRouteHome,
  routes: [
    GoRoute(
      path: Oct11RoutePages.oct11GoRouteHome,
      builder: (context, state) => Oct11RouteHome(),
    ),
    GoRoute(
      path: Oct11RoutePages.oct11page1,
      builder: (context, state) {
        String? x = state.extra as String?;

        if (x != null && x.trim().isNotEmpty) {
          return Oct11Page1(
            receiveString: x,
          );
        } else {
          return const NoDataPage();
        }
      },
      routes: [
        GoRoute(
          path: 'page5/:id', // pasing a parameters
          builder: (context, state) => Oct11Page5(
            id: state.params['id']!,
            filter: state.queryParams['filter'],
          ),
        ),
        GoRoute(
          path: 'page6',
          builder: (context, state) => const Oct11Page6(),
        ),
      ],
    ),
    GoRoute(
      path: Oct11RoutePages.oct11page2,
      builder: (context, state) {
        int? val = state.extra as int?;

        if (val != null) {
          return Oct11Page2(
            intValue: val,
          );
        } else {
          return const NoDataPage();
        }
      },
      routes: [
        GoRoute(
          name: 'PageNo3',
          path: Oct11RoutePages.oct11page3,
          builder: (context, state) {
            String? x = state.extra as String?;

            if (x != null && x.isNotEmpty) {
              return Oct11Page3(value: x);
            } else {
              return const NoDataPage();
            }
          },
          routes: [
            GoRoute(
              name: 'page4',
              path: Oct11RoutePages.oct11page4,
              builder: (context, state) => const Oct11Page4(),
            ),
          ],
        ),
      ],
    ),
  ],
);
