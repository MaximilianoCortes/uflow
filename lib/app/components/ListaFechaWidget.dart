import 'package:flutter/material.dart';
import 'package:uflow/app/components/FechaWidget.dart';

class ListaFechaWidget extends StatefulWidget {
  @override
  _ListaFechaWidgetState createState() => _ListaFechaWidgetState();
}

class _ListaFechaWidgetState extends State<ListaFechaWidget> {
  List<bool> isSelectedList = [];
  int selectedIndex = 0; // Variable para rastrear la fecha seleccionada
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final DateTime now = DateTime.now();
    final int daysInMonth = DateTime(now.year, now.month + 1, 0).day;
    isSelectedList = List.generate(daysInMonth, (index) => false);
    // Establecer la fecha de hoy como seleccionada por defecto
    selectedIndex = now.day - 1;
    isSelectedList[selectedIndex] = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Desplazar la lista hacia el elemento de la izquierda del seleccionado
      _scrollToSelected();
    });
  }

  void _scrollToSelected() {
    if (selectedIndex > 0) {
      _scrollController.animateTo(
        selectedIndex * 60.0, // Ancho de cada FechaWidget
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          controller: _scrollController, // Usar el controlador de desplazamiento
          scrollDirection: Axis.horizontal,
          itemCount: daysInMonth,
          itemBuilder: (BuildContext context, int index) {
            final date = DateTime(now.year, now.month, index + 1);
            return FechaWidget(
              date: date,
              isSelected: isSelectedList[index],
              onSelectedChanged: (isSelected) {
                setState(() {
                  // Desmarcar la fecha previamente seleccionada
                  isSelectedList[selectedIndex] = false;
                  // Marcar la nueva fecha seleccionada
                  isSelectedList[index] = isSelected;
                  selectedIndex = index;
                });
                // Desplazar la lista cuando se seleccione un nuevo elemento
                _scrollToSelected();
              },
            );
          },
        ),
      ),
    );
  }
}
