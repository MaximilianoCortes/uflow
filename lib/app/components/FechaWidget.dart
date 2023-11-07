import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FechaWidget extends StatefulWidget {
  final DateTime date;
  final bool isSelected;
  final ValueChanged<bool> onSelectedChanged;

  FechaWidget({required this.date, required this.isSelected, required this.onSelectedChanged});

  @override
  _FechaWidgetState createState() => _FechaWidgetState();
}

class _FechaWidgetState extends State<FechaWidget> {
  @override
  Widget build(BuildContext context) {
    final day = widget.date.day;
    final abbrWeekday = DateFormat.E('es').format(widget.date);

    return GestureDetector(
      onTap: () {
        widget.onSelectedChanged(!widget.isSelected);
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: widget.isSelected ? Colors.blue : Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          width: 60,
          height: 80,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                day.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                abbrWeekday,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}