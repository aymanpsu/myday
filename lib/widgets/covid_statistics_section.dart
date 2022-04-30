import 'package:flutter/material.dart';

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
          height: heightOfSection * 0.02,
        ),
        Container(
          width: double.infinity,
          height: heightOfSection * 0.70,
          decoration: const BoxDecoration(
            color: Color.fromARGB(112, 71, 184, 245),
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
                    style:
                        TextStyle(fontSize: 37, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'CONFIRMED',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '549k',
                    style:
                        TextStyle(fontSize: 37, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'DEATHS',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '549k',
                    style:
                        TextStyle(fontSize: 37, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ACTIVE',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontWeight: FontWeight.w300),
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
