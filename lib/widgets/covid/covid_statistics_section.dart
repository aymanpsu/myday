import 'package:flutter/material.dart';
import '../../utlis/app_colors.dart';

class CovidStatisticsSection extends StatelessWidget {
  const CovidStatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          _buildCovidStatisticsSection(constraints.maxHeight, context),
    );
  }

  Widget _buildCovidStatisticsSection(
      double heightOfSection, BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: heightOfSection * 0.005,
        ),
        Container(
          width: double.infinity,
          height: heightOfSection * 0.70,
          decoration: const BoxDecoration(
            color: AppColors.lightBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '549k',
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'CONFIRMED',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '8,8k',
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'DEATHS',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ACTIVE',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
