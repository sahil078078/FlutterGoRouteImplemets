import 'package:flutter/material.dart';
import 'package:flutter_go_route_implements/October_10_GoRoute/Constants/oct_10_routes_pages.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Constants/oct_11_route_page.dart';
import 'package:go_router/go_router.dart';

class Oct11Page3 extends StatelessWidget {
  final String value;
  const Oct11Page3({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Page3'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Value : $value'),
              Text('type : ${value.runtimeType}'),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  GoRouter.of(context).push(
                    '${Oct11RoutePages.oct11page2}/${Oct11RoutePages.oct11page3}/${Oct11RoutePages.oct11page4}',
                  );
                },
                child: const Text('Page4'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  GoRouter.of(context).push(
                    Oct11RoutePages.oct11page1,
                    extra: '123',
                  );
                },
                child: const Text('Page1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
