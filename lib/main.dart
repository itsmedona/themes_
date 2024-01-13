import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/Pages/HomePage.dart';
import 'view/Theme/theme_provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
