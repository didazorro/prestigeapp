import 'package:flutter/material.dart';

import '../booking.dart';

class BookingChangeNotifier extends BookingModel with ChangeNotifier {
  DateTime get current {
    var date = DateTime.now();
    return DateTime(
      year ?? date.year,
      month ?? date.month,
      day ?? date.day,
      timeStart?.hour ?? date.hour,
    );
  }

  StaffBookingModel? get staff =>
      (staffs?.isNotEmpty ?? false) ? staffs?.first : null;

  void init(String idProduct, {StaffBookingModel? staff}) {
    var currentDate = DateTime.now();
    staffs = [];
    if (staff != null) {
      staffs?.add(staff);
    }
    this.idProduct = idProduct;
    setDay(currentDate);
  }

  @override
  void setDay(DateTime date) {
    super.setDay(date);
    notifyListeners();
  }

  @override
  void setHour(DateTime time) {
    super.setHour(time);
    notifyListeners();
  }

  BookingModel toBookingModel() {
    var value = toJson();
    return BookingModel.fromLocalJson(value);
  }
}
