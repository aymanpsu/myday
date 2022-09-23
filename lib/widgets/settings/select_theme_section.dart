import 'package:flutter/material.dart';
import 'background_theme_item.dart';

class SelectTheme extends StatelessWidget {
  const SelectTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: const [
              BackgroundThemeItem(
                selectedTheme: true,
                themeImage: 'assets/images/background_1.jpeg',
              ),
              BackgroundThemeItem(
                selectedTheme: false,
                themeImage: 'assets/images/background_2.jpeg',
              ),
              BackgroundThemeItem(
                selectedTheme: false,
                themeImage: 'assets/images/background_3.jpeg',
              )
            ],
          ),
        )
      ],
    );
  }
}
