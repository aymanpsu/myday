import 'package:flutter/material.dart';

class HorizontalNewsItem extends StatelessWidget {
  const HorizontalNewsItem({
    Key? key,
    required this.newsImageUrl,
    required this.newsTitle,
    required this.newsPublisher,
    required this.publishedTime,
  }) : super(key: key);

  // Values will be passed via constracuter
  final String newsImageUrl;
  final String newsTitle;
  final String publishedTime;
  final String newsPublisher;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  newsImageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  // To do loading while building the image
                  // To do error building in case image not exist
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 12.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newsTitle,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          publishedTime,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'By $newsPublisher',
                          style: const TextStyle(
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
    );
  }
}
