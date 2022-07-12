import '../../utlis/app_lang.dart';
import 'package:flutter/material.dart';
import '../../services/get_datetime.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          _buildWeatherSection(constraints.maxHeight, context),
    );
  }

  Widget _buildWeatherSection(double heightOfSection, BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: heightOfSection * 0.80,
          decoration: const BoxDecoration(
            color: Color.fromARGB(108, 175, 196, 233),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.translate('today')!,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    GetDateTime().getDate(),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: heightOfSection * 0.01,
                ),
                Row(
                  verticalDirection: VerticalDirection.up,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // To do fetch the latest weather tempatrue bsed on loaction
                        Text(
                          '27',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(fontSize: 65),
                        ),
                        Text(
                          '°C',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // To do change this asset based on weather condations
                    Image.asset('assets/icons/cloudy-day.png'),
                  ],
                ),
                SizedBox(
                  height: heightOfSection * 0.09,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16.0,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      // To do get device loaction (adress and city)
                      child: Text(
                        'Abu Shuaib, Al Khaleej, Riyadh 13224',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: heightOfSection * 0.045,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Breaking News',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                // To Do here navigate to breaking news page show all the news
              },
              child: Text(
                'More',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}
