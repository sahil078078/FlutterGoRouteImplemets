import 'package:flutter/material.dart';
import 'package:flutter_go_route_implements/October_10_GoRoute/Constants/oct_10_routes_pages.dart';
import 'package:go_router/go_router.dart';

class Oct10Page2 extends StatelessWidget {
  const Oct10Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page2'),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.52),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(
                  "${Oct10RoutesPages.page2}/${Oct10RoutesPages.page3}",
                );
              },
              child: const Text('Page3'),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(
                  "${Oct10RoutesPages.page2}/${Oct10RoutesPages.page4}",
                );
              },
              child: const Text('Page4'),
            ),
          ],
        ),
      ),
    );
  }
}
