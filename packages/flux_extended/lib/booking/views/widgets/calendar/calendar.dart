import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/models/index.dart' show AppModel;
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';

class CalendarWidget extends StatefulWidget {
  final BuildContext context;
  final DateTime selectedDateTime;
  final Function(DateTime, List<EventInterface>) onDayPressed;
  final int? limitDay;

  const CalendarWidget.booking(
    this.context, {
    super.key,
    required this.selectedDateTime,
    required this.onDayPressed,
    this.limitDay = 14,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime month = DateTime.now();

  int numCalRow() {
    final now = month;
    final start = DateTime(now.year, now.month, 1);
    final daysInMonth = DateUtils.getDaysInMonth(now.year, now.month);
    final day = start.weekday + daysInMonth;
    var row = day ~/ 7;
    if (row * 7 < day) {
      row++;
    }
    return row;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.bodySmall!;
    final onPrimaryColor = theme.buttonTheme.colorScheme!.onPrimary;
    final unselectedWidgetColor = theme.unselectedWidgetColor.withOpacity(0.5);

    final rowCal = numCalRow();
    var heightCal = 340.0;
    if (rowCal > 5) {
      heightCal = 380.0;
    }

    return SizedBox(
      height: heightCal,
      child: CalendarCarousel(
        onDayPressed: widget.onDayPressed,
        headerText: DateFormat('MMMM yyyy').format(month),
        headerTitleTouchable: true,
        weekFormat: false,
        selectedDateTime: widget.selectedDateTime,
        showIconBehindDayText: true,
        daysHaveCircularBorder: false,
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        markedDateShowIcon: true,
        markedDateIconMaxShown: 2,
        onCalendarChanged: (time) {
          setState(() {
            month = time;
          });
        },
        headerTextStyle: textStyle.copyWith(
          color: theme.colorScheme.secondary,
          fontSize: 18,
        ),
        leftButtonIcon: Icon(
          Icons.arrow_back,
          color: theme.iconTheme.color,
        ),
        rightButtonIcon: Icon(
          Icons.arrow_forward,
          color: theme.iconTheme.color,
        ),
        minSelectedDate: DateTime.now().subtract(const Duration(days: 1)),
        maxSelectedDate: widget.limitDay != null
            ? DateTime.now().add(Duration(days: widget.limitDay!))
            : null,
        todayButtonColor: Colors.transparent,
        todayBorderColor: Colors.transparent,
        daysTextStyle: textStyle.copyWith(color: onPrimaryColor),
        weekdayTextStyle: textStyle.copyWith(color: onPrimaryColor),
        todayTextStyle: textStyle.copyWith(
          color: theme.primaryColor,
        ),
        selectedDayTextStyle: textStyle.copyWith(
            color: theme.primaryColor.getColorBasedOnBackground),
        selectedDayBorderColor: Colors.transparent,
        selectedDayButtonColor: theme.primaryColor,
        weekendTextStyle: textStyle.copyWith(color: onPrimaryColor),
        markedDateMoreShowTotal: true,
        inactiveDaysTextStyle: textStyle.copyWith(
          color: unselectedWidgetColor,
        ),
        inactiveWeekendTextStyle: textStyle.copyWith(
          color: unselectedWidgetColor,
        ),
        nextDaysTextStyle: textStyle.copyWith(
          color: unselectedWidgetColor,
        ),
        locale: Provider.of<AppModel>(context).langCode,
        height: heightCal,
        childAspectRatio: 1.2,
      ),
    );
  }
}
