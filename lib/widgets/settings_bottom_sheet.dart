import 'package:flutter/material.dart';

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
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Radio(
                  value: true,
                  groupValue: true,
                  onChanged: null,
                  splashRadius: 20,
                  toggleable: true,
                  visualDensity: VisualDensity.standard,
                  activeColor: Colors.green,
                ),
                Text(
                'English',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Radio(
                  value: true,
                  groupValue: false,
                  onChanged: null,
                  splashRadius: 20,
                  toggleable: true,
                  visualDensity: VisualDensity.standard,
                  activeColor: Colors.green,
                ),
                Text(
                'العربية',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              ],
            ),
            const SizedBox(
              height: 15.0,
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
