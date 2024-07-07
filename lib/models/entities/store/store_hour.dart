import 'package:intl/intl.dart';

import '../../../common/constants.dart';

class StoreHour {
  bool? isDisablePurchase;

  List<int> offDays = [];
  List<StoreWorkingHour> workingHours = [];

  StoreHour.fromWCFM(json) {
    isDisablePurchase = ((json['disable_purchase'] ?? 'no') == 'yes');
    final dayTime = json['day_times'];
    if (dayTime != null) {
      for (var i = 0; i < dayTime.length; i++) {
        workingHours.add(StoreWorkingHour.fromWCFM(i + 1, dayTime[i]));
      }
    }
    if (json['off_days'] != null) {
      for (var time in json['off_days']) {
        offDays.add(int.parse(time));
      }
    }
  }

  StoreHour.fromDokan(Map json) {
    isDisablePurchase = false;
    json.forEach((key, value) {
      int weekday;
      switch (key) {
        case 'monday':
          weekday = 1;
          break;
        case 'tuesday':
          weekday = 2;
          break;
        case 'wednesday':
          weekday = 3;
          break;
        case 'thursday':
          weekday = 4;
          break;
        case 'friday':
          weekday = 5;
          break;
        case 'saturday':
          weekday = 6;
          break;
        case 'sunday':
          weekday = 7;
          break;
        default:
          weekday = 1;
          break;
      }
      if ((value['status'] ?? 'close') == 'close') {
        offDays.add(weekday);
      }
      workingHours.add(StoreWorkingHour.fromDokan(weekday, value));
    });
  }

  bool isOpen() {
    if (!isOffDay()) {
      final now = DateTime.now();
      if (workingHours[now.weekday - 1].hours.isEmpty) {
        return true;
      }
      for (var hour in workingHours[now.weekday - 1].hours) {
        if (hour.start != null && hour.end != null) {
          if (now.isAfter(hour.start!) && now.isBefore(hour.end!)) {
            return true;
          }
        }
      }
    }
    return false;
  }

  bool isOffDay() {
    final now = DateTime.now();
    return offDays.contains(now.weekday);
  }
}

class StoreWorkingHour {
  int? weekday;
  List<WorkingHour> hours = [];

  StoreWorkingHour.fromWCFM(this.weekday, dayTimes) {
    if (dayTimes is List) {
      for (var hour in dayTimes) {
        if (hour['start'].isNotEmpty && hour['end'].isNotEmpty) {
          hours.add(WorkingHour.fromWCFM(hour['start'], hour['end']));
        }
      }
    }
    if (dayTimes is Map) {
      dayTimes.forEach((key, value) {
        if (value is Map &&
            value['start'].isNotEmpty &&
            value['end'].isNotEmpty) {
          hours.add(WorkingHour.fromWCFM(value['start'], value['end']));
        }
      });
    }
  }

  StoreWorkingHour.fromDokan(this.weekday, json) {
    try {
      if ((json['status'] ?? 'close') != 'close') {
        var openTimes = json['opening_time'];
        var closeTimes = json['closing_time'];
        if (openTimes is List && closeTimes is List) {
          for (var i = 0; i < openTimes.length; i++) {
            var openTime = openTimes[i].replaceAll('h', ':');
            var closeTime = closeTimes[i].replaceAll('h', ':');
            hours.add(WorkingHour.fromDokan(openTime, closeTime));
          }
        } else {
          var openTime = openTimes.replaceAll('h', ':');
          var closeTime = closeTimes.replaceAll('h', ':');
          hours.add(WorkingHour.fromDokan(openTime, closeTime));
        }
      }
    } catch (e) {
      printLog(e.toString());
    }
  }
}

class WorkingHour {
  DateTime? start;
  DateTime? end;

  WorkingHour.fromWCFM(String startTime, String endTime) {
    start = getDateTimeFromTime(startTime);
    end = getDateTimeFromTime(endTime);
  }

  WorkingHour.fromDokan(String startTime, String endTime) {
    start = getDateTimeFromTime(startTime);
    end = getDateTimeFromTime(endTime);
  }

  DateTime? getDateTimeFromTime(String time) {
    final now = DateTime.now();
    time = time.toUpperCase();
    try {
      if (time.contains('AM') || time.contains('PM')) {
        var timeOfDay = DateFormat.jm().parse(time);
        return now.copyWith(hour: timeOfDay.hour, minute: timeOfDay.minute);
      }
      var timeOfDay = DateFormat('hh:mm').parse(time);
      return now.copyWith(hour: timeOfDay.hour, minute: timeOfDay.minute);
    } catch (e) {
      printError('Failed to parse timeOfDay');
      return null;
    }
  }
}
