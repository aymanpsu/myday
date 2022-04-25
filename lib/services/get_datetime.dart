import 'package:date_format/date_format.dart';

class GetDateTime {
  String getDate() {
    DateTime dateTime = DateTime.now();
    String date = formatDate(dateTime, [DD,', ' , d, ' ', M, ' ', yyyy]);
    return date;
  }
}