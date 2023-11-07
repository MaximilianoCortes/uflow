import 'package:flutter/material.dart';
import 'package:uflow/app/components/CustomAppBar.dart';
import 'package:uflow/app/components/TarjetaTareaWidget.dart';
import 'package:uflow/app/components/BottomNavBar.dart';
import 'package:uflow/app/components/tarjetaFecha.dart';
import 'package:uflow/app/components/ListaFechaWidget.dart';

class TareasHoyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(title: 'Tareas de hoy'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[
                TarjetaFecha(
                  title: 'Fecha',
                  subtitle: 'Ordenado por prioridad',
                  iconData: Icons.calendar_month,
                ),
                ListaFechaWidget()
              ],
            ),
            SizedBox(
  height: 500,
  child: ListView(
    scrollDirection: Axis.vertical,
    children: [
      TareaCard(
        titulo: 'Recoger la basura',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      TareaCard(
        titulo: 'Hacer algo',
        prioridad: 1,
        isChecked: false,
        fechaMaxima: DateTime.now(),
      ),
      // Agrega más TareaCard widgets según sea necesario
    ],
  ),
)

          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(1),
    );
  }
}
