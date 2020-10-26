enum DateIntervalKinds { Day, Week, Month, Year }

DateTime addIntervalToTime(DateTime start, int interval, DateIntervalKinds intervalKind) {
  switch (intervalKind) {
    case DateIntervalKinds.Day:
      return DateTime(start.year, start.month, start.day + interval);
    case DateIntervalKinds.Week:
      return DateTime(start.year, start.month, start.day + 7 * interval);
    case DateIntervalKinds.Month:
      return DateTime(start.year, start.month + interval, start.day);
    case DateIntervalKinds.Year:
      return DateTime(start.year + interval, start.month, start.day);
  }
  throw Exception('Invalid input to addIntervalToTime, $intervalKind');
}

String dateIntervalKindToString(DateIntervalKinds intervalKind) {
  switch (intervalKind) {
    case DateIntervalKinds.Day:
      return 'Day';
    case DateIntervalKinds.Week:
      return 'Week';
    case DateIntervalKinds.Month:
      return 'Month';
    case DateIntervalKinds.Year:
      return 'Year';
  }
  throw Exception('Invalid input to enumToString, $intervalKind');
}
