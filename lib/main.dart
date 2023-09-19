import 'package:flutter/material.dart';
import 'package:theme_mode_switcher/utilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppUtilities.isLight
          ? AppUtilities.lightTheme
          : AppUtilities.darkTheme,
      title: 'Theme Mode Switcher',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme Mode Switcher"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  AppUtilities.isLight = !AppUtilities.isLight;
                });
              },
              icon: Icon(
                AppUtilities.isLight ? Icons.light_mode : Icons.dark_mode,
              ),
            )
          ],
        ),
        body: const Center(
          child: Text(
            "Home Screen",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
