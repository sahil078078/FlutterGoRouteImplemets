import 'package:flutter/material.dart';
import 'package:flutter_go_route_implements/October_10_GoRoute/Constants/oct_10_routes_pages.dart';
import 'package:go_router/go_router.dart';

class Oct10GoRouteHome extends StatelessWidget {
  const Oct10GoRouteHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.52),
        title: const Text('GoRoute Home'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // GoRouter.of(context).go(Oct10RoutesPages.page1); // its direct work as push and replace
                // context.go(Oct10RoutesPages.page1);  // its direct work as push and replace

                GoRouter.of(context).push(
                  Oct10RoutesPages.page1,
                ); // work as push push
              },
              child: const Text('Page1'),
            ),
            ElevatedButton(
              onPressed: () async {
                GoRouter.of(context).push(
                  Oct10RoutesPages.page2,
                );
              },
              child: const Text('Page2'),
            ),
            ElevatedButton(
              onPressed: () async {
                GoRouter.of(context).push('${Oct10RoutesPages.page2}/${Oct10RoutesPages.page4}/${Oct10RoutesPages.page5}');
              },
              child: const Text('Page5'),
            ),
          ],
        ),
      ),
    );
  }
}
