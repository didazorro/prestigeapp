extension DurationExt on Duration {
  String get timeHHmm => timeFormat('HH:mm');
  String get timemmss => timeFormat('mm:ss');

  String timeFormat(String format) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final dataTime = {};
    dataTime['H'] = inHours.toString();
    dataTime['HH'] = twoDigits(inHours);
    dataTime['mm'] = twoDigits(inMinutes.remainder(60));
    dataTime['m'] = inMinutes.remainder(60);
    dataTime['ss'] = twoDigits(inSeconds.remainder(60));
    dataTime['s'] = inSeconds.remainder(60);
    dataTime['pp'] = twoDigits(inMilliseconds.remainder(100));
    dataTime['p'] = inMilliseconds.remainder(100);
    var time = format;
    var milisecond = '';
    if (format.contains(',')) {
      final split = format.split(',');
      time = split[0];
      milisecond = split[1];
    }

    final formatTime = time.split(':');

    return formatTime
            .map((e) => dataTime[e] ?? '')
            .toList()
            .where((element) => element.isNotEmpty)
            .join(':') +
        (milisecond.isNotEmpty ? ',${dataTime[milisecond]}' : '');
  }

  String get timeHHmmss => timeFormat('HH:mm:ss');

  String get timeHHmmsspp => timeFormat('HH:mm:ss,pp');

  String get timeHHmmssp => timeFormat('HH:mm:ss,p');

  String get timeHHmmssppp => timeFormat('HH:mm:ss,ppp');

  String get timeHHmmsspppp => timeFormat('HH:mm:ss,pppp');

  String get remainingTime => timeFormat('mm:ss');

  String get remainingDateText => timeFormat('dd:HH:mm');
}
