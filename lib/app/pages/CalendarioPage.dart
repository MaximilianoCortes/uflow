import 'package:flutter/material.dart';
import 'package:uflow/app/components/CustomAppBar.dart';
import 'package:uflow/app/components/BottomNavBar.dart';
import 'package:uflow/app/components/tarjetaFecha.dart';
import 'package:uflow/app/components/ListaFechaWidget.dart';
import 'package:uflow/app/components/CalendarioWidget.dart';

class CalendarioPage extends StatelessWidget {
  final DateTime now = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(title: 'Tareas de hoy'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                TarjetaFecha(
                  title: 'Fecha',
                  subtitle: 'Ordenado por prioridad',
                  iconData: Icons.calendar_month,
                ),
                ListaFechaWidget(),
              ],
            ),
            CalendarioWidget(
              focusedDay: now,
              firstDay: DateTime(now.year, now.month - 1, now.day),
              lastDay: DateTime(now.year, now.month + 1, now.day),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(3),
    );
  }
}
