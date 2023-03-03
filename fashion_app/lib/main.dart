import 'package:fashion_app/pages/arrival1.dart';
import 'package:fashion_app/pages/arrival2.dart';
import 'package:fashion_app/pages/arrival3.dart';
import 'package:fashion_app/pages/homepage.dart';
import 'package:fashion_app/pages/popular1.dart';
import 'package:fashion_app/pages/popular2.dart';
import 'package:fashion_app/pages/popular3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

// The route configuration.
final GoRouter _router = GoRouter(initialLocation: '/homepage', routes: [
  GoRoute(
    path: '/homepage',
    builder: (context, state) => const MyHomePage(),
  ),
  GoRoute(
    path: '/arrival1/:index',
    builder: (context, state) =>
          arrival1(index: int.parse(state.params['index']!),),
  ),
  // GoRoute(
  //   path: '/arrival2/:index',
  //   builder: (context, state) =>
  //        arrival2(index: int.parse(state.params['index']!),),
  // ),
  // GoRoute(
  //   path: '/arrival3/:index',
  //   builder: (context, state) =>
  //        arrival3(index: int.parse(state.params['index']!)),
  // ),
  // GoRoute(
  //   path: '/popular1/:index',
  //   builder: (context, state) =>
  //        popular1(index: int.parse(state.params['index']!)),
  // ),
  // GoRoute(
  //   path: '/popular2/:index',
  //   builder: (context, state) =>
  //       const popular2(index: int.parse(state.params['index']!)),
  // ),
  // GoRoute(
  //   path: '/popular3/:index',
  //   builder: (context, state) =>
  //       const popular3(index: int.parse(state.params['index'])),
  // ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Brondo Fashion',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
