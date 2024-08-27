import 'package:async/async.dart';
import 'package:flutter/material.dart';

import 'package:fstore/models/booking/booking_value.dart';
import 'package:fstore/models/booking/staff_booking_model.dart';
import 'package:fstore/services/index.dart';

final _emptyValue = BookingValue(
  staffs: null,
  selectDate: null,
  listSlotSelect: null,
  isLoadingSlot: false,
  idProduct: null,
);

class BookingNotifier extends ValueNotifier<BookingValue> {
  BookingNotifier() : super(_emptyValue.copyWith());
  CancelableCompleter<List<String>>? _completer;

  Future<void> init(String idProduct) async {
    value = value.copyWith(idProduct: idProduct);
    await getListStaff().then((_) {
      final staffId = (staffs?.isNotEmpty ?? false) ? staffs?.first.id : null;
      updateSlot(DateTime.now(), staffId).then(
        (_) => updateStatusLoading(false),
      );
    });
  }

  void updateStatusLoading(isLoading) {
    value = value.copyWith(isLoadingSlot: isLoading);
  }

  @override
  void dispose() {
    _completer?.operation.cancel();
    super.dispose();
  }
}

extension BookingViewmodelProperties on BookingNotifier {
  List<StaffBookingModel>? get staffs => value.staffs;
  List<String>? get listSlotSelect =>
      (value.listSlotSelect?.isNotEmpty ?? false) ? value.listSlotSelect : [];
  String? get selectDate => value.selectDate;
  bool get isLoadingSlot => value.isLoadingSlot;

  set staffs(List<StaffBookingModel>? staffs) {
    value = value.copyWith(staffs: staffs ?? []);
  }

  set listSlotSelect(List<String>? listSlotSelect) {
    value = value.copyWith(listSlotSelect: listSlotSelect);
  }

  set selectDate(String? selectDate) {
    value = value.copyWith(selectDate: selectDate);
  }
}

extension BookingInteractor on BookingNotifier {
  Services get _service => Services();
  Future<void> getListStaff() async {
    final listStaff = await _service.api.getListStaff(value.idProduct) ?? [];
    if (listStaff.isNotEmpty) {
      staffs = listStaff as List<StaffBookingModel>;
    }
  }

  Future<void> updateSlot(DateTime date, [int? idStaff]) async {
    updateStatusLoading(true);
    var dateChoose = '${date.year}-${date.month}-${date.day}';
    listSlotSelect?.clear();
    await _completer?.operation.cancel();
    _completer = CancelableCompleter<List<String>>();
    _completer?.complete(_service.api.getSlotBooking(
      value.idProduct,
      '$idStaff',
      dateChoose,
    ));
    final listSlot = await _completer?.operation.valueOrCancellation();
    if (_completer?.isCanceled ?? false) {
      return;
    }
    listSlotSelect = listSlot ?? [];
    updateStatusLoading(false);
  }
}
