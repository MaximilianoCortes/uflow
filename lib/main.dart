import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:uflow/app/navigator.dart/AppRoutes.dart'; // Importa las rutas
import 'app/pages/HomePage.dart';
import 'app/pages/TareasHoyPage.dart';
import 'app/pages/CalendarioPage.dart';

void main() {
  initializeDateFormatting('es', null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeRoute, // Ruta inicial
      routes: {
        homeRoute: (context) => HomePage(),
        tareasHoyRoute: (context) => TareasHoyPage(),
        calendarioRoute: (context) => CalendarioPage(),
      },
    );
  }
}
