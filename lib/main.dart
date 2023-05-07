import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider_example/theme_provider.dart';
import 'package:simple_provider_example/theme_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return MaterialApp(
          title: 'Simple Provider Example',
          themeMode: provider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeService.lightTheme,
          darkTheme: ThemeService.darkTheme,
          home: const Counter(),
        );
      },
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Provider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'The theme is actually',
            ),
            Text(
              Provider.of<ThemeProvider>(context).isDarkMode ? 'Dark' : 'Light',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Provider.of<ThemeProvider>(context, listen: false).toggleTheme,
        tooltip: 'Toggle Theme',
        child: const Icon(Icons.swap_horiz_outlined),
      ),
    );
  }
}
