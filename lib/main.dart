import 'package:flutter/material.dart';
import './screens/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './utlis/app_lang.dart';
import 'package:provider/provider.dart';
import './providers/switch_language.dart';
import './providers/switch_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Create multi providers (state logic)
    return MultiProvider(
      providers: [
        // State for changing background
        ChangeNotifierProvider<SwitchBackground>(
          create: (_) => SwitchBackground(),
        ),
        // State for changing language
        ChangeNotifierProvider<SwitchLangugae>(
          create: (_) => SwitchLangugae(),
        )
      ],
      child: Consumer<SwitchLangugae>(
        builder: (ctx, langState, child) {
          return MaterialApp(
            title: 'My day app',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: langState.appLocal,
            supportedLocales: const [
              Locale('en'), // English, no country code
              Locale('ar'), // Arabic, no country code
            ],
            // TO DO Import my custom theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
