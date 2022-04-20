import 'package:flutter/material.dart';
import '../utlis/app_lang.dart';
import '../widgets/weather_section.dart';

// **Use when you are ready tu plug state management**
// import '../providers/switch_language.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // **Use when you are ready tu plug state management**
    // final langeState = Provider.of<SwitchLangugae>(context, listen: true);
    return Scaffold(
      // To Do transparent appBar following the design
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          AppLocalizations.of(context)!.translate('app_name')!,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // To Do bottom sheet widget show settings
            },
            icon: const Icon(Icons.settings_outlined),
          )
        ],
        elevation: 0.0,
      ),
      // To Do three sections
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_4.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                // TO Do Weather section
                const Flexible (
                  flex: 2,
                  child: WeatherSection(),
                ),
                // To Do Beaking news section
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                // To Do Covid statistics section
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
