import 'package:flutter/material.dart';
import 'package:flutter_go_route_implements/October_10_GoRoute/Constants/oct_10_routes_pages.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Components/oct_11_route_text_field.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Constants/oct_11_route_page.dart';
import 'package:go_router/go_router.dart';

class Oct11Page2 extends StatelessWidget {
  final int intValue;
  Oct11Page2({
    Key? key,
    required this.intValue,
  }) : super(key: key);

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Page2'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Value : $intValue'),
              Text('Type : ${intValue.runtimeType}'),
              const SizedBox(height: 10),
              Oct11RouteTextField(
                controller: controller,
                lable: 'Input',
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  String? x = controller.text.trim();
                  // GoRouter.of(context).pushNamed('PageNo3');
                  // context.go(Oct10RoutesPages.page3);
                  GoRouter.of(context).push(
                    '${Oct11RoutePages.oct11page2}/${Oct10RoutesPages.page3}',
                    extra: x,
                  );
                },
                child: const Text('Page3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
