import 'package:flutter/material.dart';


class BackgroundThemeItem extends StatelessWidget {
  const BackgroundThemeItem({
    Key? key,
    required this.selectedTheme,
    required this.themeImage,
  }) : super(key: key);
  // Define the header of the theme item
  final bool selectedTheme;
  final String themeImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: selectedTheme ? Stack(
        // clipBehavior: Clip.antiAlias,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.green,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset(
                themeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 15.0,
              width: 15.0,
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.green,
              ),
              child: const Icon(
                Icons.done_outlined,
                color: Colors.white,
                size: 10.0,
              ),
            ),
          ),
        ],
      ) : SizedBox(
            width: 50.0,
            height: 50.0,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset(
                themeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
    );
  }
}
