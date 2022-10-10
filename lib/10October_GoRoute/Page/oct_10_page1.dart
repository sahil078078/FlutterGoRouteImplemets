import 'package:flutter/material.dart';
import 'package:flutter_go_route_implements/10October_GoRoute/Constants/oct_10_routes_pages.dart';
import 'package:go_router/go_router.dart';

class Oct10Page1 extends StatelessWidget {
  const Oct10Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page1'),
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
                  '${Oct10RoutesPages.page2}/${Oct10RoutesPages.page4}',
                );
              },
              child: const Text('page4'),
            ),
          ],
        ),
      ),
    );
  }
}
