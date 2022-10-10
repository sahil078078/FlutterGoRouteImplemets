import 'package:flutter/material.dart';
import '10October_GoRoute/Constants/oct_10_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Flutter',
      debugShowCheckedModeBanner: false,
      routerDelegate: oct10Route.routerDelegate,
      routeInformationParser: oct10Route.routeInformationParser,
      routeInformationProvider: oct10Route.routeInformationProvider,
    );
  }
}
