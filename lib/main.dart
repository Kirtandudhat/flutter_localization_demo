// Importing necessary libraries
import 'package:flutter/material.dart';
import 'package:flutter_localization_demo/i18n/AppLocalizationsDelegate.dart';
import 'package:flutter_localization_demo/i18n/app_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Localization delegates
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // Supported locales for this app
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      // Home page of the app
      home: const MyHomePage(),
    );
  }
}

// Home page widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // Create the mutable state for this widget
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State for the MyHomePage widget
class _MyHomePageState extends State<MyHomePage> {
  // Build method to describe the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Use localized string for the title
        title: Text(AppLocalizations.of(context).translate('flutter_localization_demo'), style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // Use localized string for the text
              AppLocalizations.of(context).translate('hello'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}