import 'package:flutter/material.dart';
import '../widgets/select_language_section.dart';
import '../widgets/select_theme_section.dart';

class SettingsBottomSheet extends StatelessWidget {
  const SettingsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 29,
        vertical: 15,
      ),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/icons/bottom_sheet_header.png'),
            ),
            const Flexible(
              flex: 1,
              child: SelectLnaguage(),
            ),
            const Flexible(
              flex: 1,
              child: SelectTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
