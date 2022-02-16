import 'package:flutter/material.dart';
import '../utlis/app_lang.dart';
import '../providers/switch_language.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final langeState = Provider.of<SwitchLangugae>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.translate('home')!,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.translate('today')!,
            ),
            ElevatedButton(
              onPressed: () {
                langeState.switchLang(langeState.appLocal);
              },
              child: Text(
                AppLocalizations.of(context)!.translate('chanage_languge')!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
