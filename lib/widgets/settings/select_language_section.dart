import 'package:flutter/material.dart';
import 'language_item.dart';

class SelectLnaguage extends StatelessWidget {
  const SelectLnaguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SizedBox(
          height: 70.0,
          child: ListView(
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
        ),
      ],
    );
  }
}
