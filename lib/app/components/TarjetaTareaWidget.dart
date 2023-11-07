import 'package:flutter/material.dart';

class TareaCard extends StatefulWidget {
  final String titulo;
  bool isChecked;
  final int prioridad;
  final DateTime fechaMaxima;

  TareaCard({
    required this.titulo,
    required this.isChecked,
    required this.prioridad,
    required this.fechaMaxima,
  });

  @override
  _TareaCardState createState() => _TareaCardState();
}

class _TareaCardState extends State<TareaCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
          setState(() {
            widget.isChecked = !widget.isChecked;
          });
        },
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.titulo,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomCheckbox(
              value: widget.isChecked,
              onChanged: (newValue) {
                setState(() {
                  widget.isChecked = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          color: value ? Colors.blue : Colors.transparent,
        ),
        child: Center(
          child: value
              ? Icon(
                  Icons.check,
                  size: 16,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
