import 'package:flutter/material.dart';
import 'October_11_GoRoute/Constants/oct_11_route.dart';

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
      routerDelegate: oct11Route.routerDelegate,
      routeInformationParser: oct11Route.routeInformationParser,
      routeInformationProvider: oct11Route.routeInformationProvider,
    );
  }
}
