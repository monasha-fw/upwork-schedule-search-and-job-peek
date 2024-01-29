extension DateTimeUtils on DateTime? {
  DateTime? get startOfDay =>
      this?.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
}
