class GetDateTime {
  String getDate() {
    DateTime dateTime = DateTime.now();
    String date = dateTime.toIso8601String().split('T').first;
    return date;
  }
}
