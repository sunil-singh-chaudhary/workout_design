import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sizer/sizer.dart';

class HorizontalCalendar extends StatefulWidget {
  const HorizontalCalendar({super.key});

  @override
  _HorizontalCalendarState createState() => _HorizontalCalendarState();
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  late DateTime selectedDate;

  final _scrollController = AutoScrollController();

  DateTime currentDate = DateTime.now();
  late DateTime startDate, endDate;
  DateTime? date;
  late double itemCount;
  bool isSelected = false;
  int? selectedIndex;
  @override
  void initState() {
    super.initState();

    selectedDate = DateTime.now();
    startDate = currentDate.subtract(const Duration(days: 30));
    // Show 30 days before and after the current date
    endDate = currentDate.add(const Duration(days: 30));

    _scrollToCounter(31);
    // debugPrint('jumping to 31');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 10.h, // Adjust the height as needed
        child: ListView.builder(
          itemCount: endDate.difference(startDate).inDays + 1,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            date = startDate.add(Duration(days: index));
            isSelected = isSameDay(date!, selectedDate);

            return GestureDetector(
              onTap: () {
                setState(() {
                  // selectedDate = date!;
                  selectedIndex = index;
                  debugPrint('selectedIndex $selectedIndex');
                  date = startDate.add(Duration(days: selectedIndex!));
                  selectedDate = date!;
                  debugPrint('n date $date');
                  isSelected = isSameDay(date!, selectedDate);
                });
                _scrollToCounter(selectedIndex!);
              },
              child: AutoScrollTag(
                controller: _scrollController,
                index: index,
                key: ValueKey(index),
                highlightColor: Colors.blue.withOpacity(0.1),
                child: Container(
                  color: Colors.white,
                  child: buildDateWidget(date!, isSelected),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future _scrollToCounter(int index) async {
    debugPrint("Scrolling to index: $index");

    await _scrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.middle);
    _scrollController.highlight(index);
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  Widget buildDateWidget(DateTime date, bool isSelected) {
    String formattedDate = DateFormat('d').format(date);
    String formattedDay = DateFormat('E').format(date);

    final scale = isSelected ? 1.0 : 0.8; // Zoom in for the selected date
    final backgroundColor = isSelected ? Colors.blue : Colors.transparent;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      transform: Matrix4.identity()..scale(scale),
      child: Container(
        width: isSelected ? 80 : 60, // Adjust the width for selected date
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the border radius as needed
        ),
        padding: const EdgeInsets.all(8.0), // Adjust padding as needed
        child: Column(
          children: [
            Text(
              formattedDay,
              style: TextStyle(
                fontSize: 18,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            Text(
              formattedDate,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedDate = date;
//                   });
//                   _scrollController.jumpTo(index * 55.0);
//                 },
//               ),
