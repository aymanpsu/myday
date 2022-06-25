import 'package:flutter/material.dart';

class SelectTheme extends StatelessWidget {
  const SelectTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: Stack(
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
                          'assets/images/background_1.jpeg',
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
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
