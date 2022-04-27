import 'package:flutter/material.dart';

class BreakingNewsSection extends StatelessWidget {
  const BreakingNewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          _buildNewsSection(constraints.maxHeight, context),
    );
  }

  Widget _buildNewsSection(double heightOfSection, BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: heightOfSection * 0.02,
        ),
        SizedBox(
          height: heightOfSection * 0.70,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: SizedBox(
                  width: 225.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Image.network(
                            'https://scx2.b-cdn.net/gfx/news/2022/nasa-gives-green-light.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 8.0,
                                top: 6.0,
                                // bottom: 14.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NACI to release new guidance on coronavirus boosters today - CP24 Toronto’s Breaking News',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                    maxLines: 2,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    '4 hours ago',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Text(
                                    'By CP24 Toronto’s Breaking News',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
