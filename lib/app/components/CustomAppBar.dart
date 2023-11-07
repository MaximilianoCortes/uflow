import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title; // Parámetro para el título

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0), // Establece el padding a cero
      color: Colors.white, // Establece el color de fondo blanco
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black), // Icono a la izquierda con color negro
            onPressed: () {
              // Agrega el comportamiento que desees
            },
          ),
          Text(
            title, // Utiliza el título pasado como parámetro
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Establece el color del texto a negro
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black), // Botón de configuración a la derecha con color negro
            onPressed: () {
              // Agrega el comportamiento que desees
            },
          ),
        ],
      ),
    );
  }
}
