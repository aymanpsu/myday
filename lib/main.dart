import 'package:flutter/material.dart';
import './screens/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './utlis/app_lang.dart';
import './utlis/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import './providers/switch_language.dart';
import './providers/switch_background.dart';

Future main() async {
  // To load the .env file contents into dotenv.
  await dotenv.load(fileName: ".env");
  // Load the app
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
            title: AppLocalizations.of(context)!.translate('app_name')!,
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
            theme: AppTheme().lightTheme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
