import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:provider/provider.dart';

import '../../booking.dart';
import '../../viewmodel/booking_model_change_notifier.dart';

class ChooseStaff extends StatelessWidget {
  final List<StaffBookingModel> staffs;
  final void Function(StaffBookingModel? staff)? onChanged;
  const ChooseStaff({
    this.staffs = const [],
    this.onChanged,
  });

  String getStaffName(StaffBookingModel? value, BuildContext context) {
    // final model = Provider.of<AppModel>(context);
    // final rates = model.currencyRate;
    var name = value?.displayName ?? '';
    // if ((value?.cost ?? 0) > 0) {
    //   name += ' + ${PriceTools.getCurrencyFormatted(value?.cost, rates)}';
    // }
    return name;
  }

  @override
  Widget build(BuildContext context) {
    if (staffs.isEmpty) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).chooseStaff,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Selector<BookingChangeNotifier, StaffBookingModel?>(
            selector: (context, model) => model.staff,
            builder: (context, staff, _) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownSearch<StaffBookingModel>(
                  popupProps: PopupPropsMultiSelection.bottomSheet(
                    itemBuilder: (context, item, isSelected) => Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        getStaffName(item, context),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  items: staffs,
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  clearButtonProps: const ClearButtonProps(
                    isVisible: true,
                    color: Colors.red,
                  ),
                  onChanged: onChanged,
                  selectedItem: staff,
                  dropdownBuilder: (_, selectedItem) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(getStaffName(selectedItem, context)),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
