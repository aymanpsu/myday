import 'package:flutter/material.dart';
import '../services/get_time.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          _buildNormalContainer(constraints.maxHeight, context),
    );
  }

  Widget _buildNormalContainer(double heightOfSection, BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: heightOfSection * 0.75,
          decoration: const BoxDecoration(
            color: Color.fromARGB(119, 15, 116, 171),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    GetDateTime().getDate(),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
