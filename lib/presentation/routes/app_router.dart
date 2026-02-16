import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../views/home/home_view.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    // Add more routes here
  ],
);
