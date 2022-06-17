import 'package:flutter/material.dart';
import '../widgets/language_item.dart';

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
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Language',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const <LanguageItem>[
                LanguageItem(
                  name: 'English',
                  state: true,
                ),
                LanguageItem(
                  name: 'العربية',
                  state: false,
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Theme',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
