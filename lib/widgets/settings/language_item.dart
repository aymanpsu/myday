import 'package:flutter/material.dart';

class LanguageItem extends StatefulWidget {
  const LanguageItem({
    Key? key,
    required this.name,
    required this.state,
  }) : super(key: key);
  final String name;
  final bool state;

  @override
  State<LanguageItem> createState() => _LanguageItemState();
}

class _LanguageItemState extends State<LanguageItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          widget.state
              ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.green,
                    ),
                    child: const Icon(
                      Icons.done_outlined,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.black)
                      ),
                      
                    ),
                  ),
                ),
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
