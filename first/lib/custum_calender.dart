import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomTableCalendar extends StatefulWidget {
  const CustomTableCalendar({Key? key}) : super(key: key);

  @override
  _CustomTableCalendarState createState() => _CustomTableCalendarState();
}

class _CustomTableCalendarState extends State<CustomTableCalendar> {

  final ValueNotifier<DateTime?> dateSub = ValueNotifier(null);
  final ValueNotifier<DateTime?> longDateSub = ValueNotifier(null);
  final ValueNotifier<TimeOfDay?> timeSub = ValueNotifier(null);
  final ValueNotifier<TimeOfDay?> timeSubShort = ValueNotifier(null);
  final todaysDate = DateTime.now();
  var _focusedCalendarDate = DateTime.now();
  final _initialCalendarDate = DateTime(2000);
  final _lastCalendarDate = DateTime(2050);
  DateTime? selectedCalendarDate;
  final titleController = TextEditingController();
  final descpController = TextEditingController();

  late Map<DateTime, List<MyEvents>> mySelectedEvents;

  @override
  void initState() {
    selectedCalendarDate = _focusedCalendarDate;
    mySelectedEvents = {};
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descpController.dispose();
    super.dispose();
  }

  List<MyEvents> _listOfDayEvents(DateTime dateTime) {
    return mySelectedEvents[dateTime] ?? [];
  }

  /*_showAddEventDialog() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('New Event'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildTextField(
                  controller: titleController, hint: 'Enter Title'),
              const SizedBox(
                height: 20.0,
              ),
              buildTextField(
                  controller: descpController, hint: 'Enter Description'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (titleController.text.isEmpty &&
                    descpController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter title & description'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                  //Navigator.pop(context);
                  return;
                } else {
                  setState(() {
                    if (mySelectedEvents[selectedCalendarDate] != null) {
                      mySelectedEvents[selectedCalendarDate]?.add(MyEvents(
                          eventTitle: titleController.text,
                          eventDescp: descpController.text));
                    } else {
                      mySelectedEvents[selectedCalendarDate!] = [
                        MyEvents(
                            eventTitle: titleController.text,
                            eventDescp: descpController.text)
                      ];
                    }
                  });

                  titleController.clear();
                  descpController.clear();

                  Navigator.pop(context);
                  return;
                }
              },
              child: const Text('Add'),
            ),
          ],
        ));
  }*/

  Widget buildTextField(
      {String? hint, required TextEditingController controller}) {
    return TextField(
      controller: controller,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: hint ?? '',
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: AppColors.eggPlant, width: 1.5),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: AppColors.eggPlant, width: 1.5),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Calendar'),
      ),
     /* floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddEventDialog(),
        label: const Text('Add Event'),
      ),*/
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.fromLTRB(40.0,1.0,40.0,1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                ValueListenableBuilder<DateTime?>(
                    valueListenable: dateSub,
                    builder: (context, dateVal, child) {
                      return InkWell(
                          onTap: () async {
                            DateTime? date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2017),
                                lastDate: DateTime(2050),
                                currentDate: DateTime.now(),
                                initialEntryMode: DatePickerEntryMode.calendar,
                                initialDatePickerMode: DatePickerMode.day,
                                builder: (context, child) {
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB(40.0,1.0,40.0,1.0),
                                    child: Center(
                                      child: Theme(
                                        data: Theme.of(context).copyWith(
                                            colorScheme: const ColorScheme.light(
                                              primary: Colors.black,
                                            )
                                        ),
                                        child: child!,
                                      ),
                                    ),
                                  );
                                });
                            dateSub.value = date;
                          },
                          child: buildDateTimePicker(
                              dateVal != null ? convertDate(dateVal) : ''));
                    }),


              /*  Card(
                  margin:  EdgeInsets.all(8.0),
                  elevation: 5.0,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(color: AppColors.blackCoffee, width: 2.0),
                  ),
                  child: TableCalendar(
                    focusedDay: _focusedCalendarDate,
                    // today's date
                    firstDay: _initialCalendarDate,
                    // earliest possible date
                    lastDay: _lastCalendarDate,
                    // latest allowed date
                    calendarFormat: CalendarFormat.month,
                    // default view when displayed
                    // default is Saturday & Sunday but can be set to any day.
                    // instead of day number can be mentioned as well.
                    weekendDays:  [DateTime.sunday, 6],
                    // default is Sunday but can be changed according to locale
                    //startingDayOfWeek: StartingDayOfWeek.sunday,
                    // height between the day row and 1st date row, default is 16.0
                    daysOfWeekHeight: 40.0,
                    // height between the date rows, default is 52.0
                    rowHeight: 60.0,
                    // this property needs to be added if we want to show events
                    eventLoader: _listOfDayEvents,
                    // Calendar Header Styling
                    headerStyle: const HeaderStyle(
                      titleTextStyle: TextStyle(color:Colors.black, fontSize: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,),

                     *//* formatButtonTextStyle:
                      TextStyle(color: AppColors.ultraRed, fontSize: 16.0),
                      formatButtonDecoration: BoxDecoration(
                        color: AppColors.babyPowder,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),*//*
                      leftChevronIcon: Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                        size: 28,
                      ),
                      rightChevronIcon: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                    // Calendar Days Styling
                    daysOfWeekStyle:  DaysOfWeekStyle(
                      // Weekend days color (Sat,Sun)
                      weekendStyle: TextStyle(color: Colors.black),
                    ),
                    // Calendar Dates styling
                    calendarStyle:  CalendarStyle(
                      // Weekend dates color (Sat & Sun Column)
                      weekendTextStyle: TextStyle(color: Colors.black),
                      // highlighted color for today
                      todayDecoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      // highlighted color for selected day
                      selectedDecoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      markerDecoration: BoxDecoration(
                          color: AppColors.ultraRed, shape: BoxShape.circle),
                    ),
                    selectedDayPredicate: (currentSelectedDate) {
                      // as per the documentation 'selectedDayPredicate' needs to determine
                      // current selected day
                      return (isSameDay(
                          selectedCalendarDate!, currentSelectedDate));
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      // as per the documentation
                      if (!isSameDay(selectedCalendarDate, selectedDay)) {
                        setState(() {
                          selectedCalendarDate = selectedDay;
                          _focusedCalendarDate = focusedDay;
                        });
                      }
                    },
                  ),
                ),
                ..._listOfDayEvents(selectedCalendarDate!).map(
                      (myEvents) => ListTile(
                    leading: const Icon(
                      Icons.done,
                      color: AppColors.eggPlant,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Event Title:   ${myEvents.eventTitle}'),
                    ),
                    subtitle: Text('Description:   ${myEvents.eventDescp}'),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class AppColors {
  AppColors._();

  static const Color blackCoffee = Color(0xFF352d39);
  static const Color eggPlant = Color(0xFF6d435a);
  static const Color celeste = Color(0xFFb1ede8);
  static const Color babyPowder = Color(0xFFFFFcF9);
  static const Color ultraRed = Color(0xFFFF6978);
}
Widget buildDateTimePicker(String data) {
  return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.black
          )
        ),

      ),
      child: Text(data),

    )
    ;
}
String convertDate(DateTime dateTime) {
  return DateFormat('dd/MM/yyyy').format(dateTime);
}

class MyEvents {
  final String eventTitle;
  final String eventDescp;

  MyEvents({required this.eventTitle, required this.eventDescp});

  @override
  String toString() => eventTitle;
}