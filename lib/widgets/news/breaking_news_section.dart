import 'package:flutter/material.dart';
import './horizontal_news_list.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: heightOfSection * 0.02,
        ),
        SizedBox(
          height: heightOfSection * 0.70,
          child: const HorizontalNewsList(),
        ),
        SizedBox(
          height: heightOfSection * 0.13,
        ),
        Text(
          'Covid statistics',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}
