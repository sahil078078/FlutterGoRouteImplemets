import 'package:flutter/material.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Constants/oct_11_route_page.dart';
import 'package:go_router/go_router.dart';

import 'Components/oct_11_route_text_field.dart';

class Oct11RouteHome extends StatelessWidget {
  Oct11RouteHome({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoRoute'),
        backgroundColor: Colors.amberAccent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Oct11RouteTextField(
                lable: 'name',
                controller: controller,
         
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  final value = controller.text.trim();
                  GoRouter.of(context).push(
                    Oct11RoutePages.oct11page1,
                    extra: value,
                    
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
