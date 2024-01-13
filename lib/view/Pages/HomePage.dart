import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/box.dart';
import '../Components/button.dart';
import '../Theme/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: Button(
              color: Theme.of(context).colorScheme.secondary,
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              }),
        ),
      ),
    );
  }
}
