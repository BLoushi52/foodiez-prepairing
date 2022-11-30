import 'package:flutter/material.dart';
import 'package:flutter_prepairing/Pages/home_page.dart';
import 'package:flutter_prepairing/providers/foodiez_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
      ],
      child: MaterialApp.router(
        title: 'Foodiez',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
