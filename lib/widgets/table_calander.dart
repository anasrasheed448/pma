import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomTableCalendar extends StatefulWidget {
  const CustomTableCalendar({Key? key}) : super(key: key);

  @override
  _CustomTableCalendarState createState() => _CustomTableCalendarState();
}

class _CustomTableCalendarState extends State<CustomTableCalendar> {
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime dateTime = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body:
        Center(
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime.utc(2000),
        lastDay: DateTime.utc(2050),
        calendarFormat: calendarFormat,
        startingDayOfWeek: StartingDayOfWeek.monday,
        onDaySelected: (DateTime selectDay, DateTime focusDay) {
          setState(() {
            dateTime = selectDay;
            focusedDay = focusDay;
          });
        },
        // Select date
        calendarStyle: const CalendarStyle(
            selectedDecoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        )),
        selectedDayPredicate: (DateTime date) {
          return isSameDay(dateTime, date);
        },
        // Calendar formet
        onFormatChanged: (CalendarFormat _calendarFormat) {
          setState(() {
            calendarFormat = _calendarFormat;
          });
        },
      ),
      // ),
    );
  }
}
