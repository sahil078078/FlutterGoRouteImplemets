import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_go_route_implements/October_11_GoRoute/Constants/oct_11_route_page.dart';
import 'package:go_router/go_router.dart';

class Oct11Page1 extends StatelessWidget {
  final String? receiveString;
  Oct11Page1({
    Key? key,
    this.receiveString,
  }) : super(key: key);

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Page1'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Recieve : $receiveString'),
              Text('type : ${receiveString.runtimeType}'),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                ],
                decoration: const InputDecoration(
                  label: Text('Number'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  final int? value = controller.text.isNotEmpty
                      ? int.parse(controller.text.trim())
                      : null;

                  GoRouter.of(context).push(
                    Oct11RoutePages.oct11page2,
                    extra: value,
                  );
                },
                child: const Text('Page2'),
              ),
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
              const Text('for pass parameters'),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  var id = Random().nextInt(100);
                  var filter = '';
                  // context.go('${Oct11RoutePages.oct11page1}/page5/$id');
                  GoRouter.of(context).push(
                    '${Oct11RoutePages.oct11page1}/page5/$id?filter=$filter',
                  );

                  // upper both work same
                },
                child: const Text(
                  'Page5 Parameters',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
