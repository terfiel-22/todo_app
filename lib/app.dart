import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/theme/custom_theme.dart';
import 'package:todo_app/core/theme/theme_provider.dart';
import 'package:todo_app/routes/app_routes.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "To-do App",
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<ThemeProvider>().currentTheme,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      routerConfig: AppRoutes.routes,
    );
  }
}
