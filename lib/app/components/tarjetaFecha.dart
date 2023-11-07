import 'package:flutter/material.dart';

class TarjetaFecha extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData iconData;

  TarjetaFecha({
    required this.title,
    required this.subtitle,
    required this.iconData,
  });

  @override
  _TarjetaFechaState createState() => _TarjetaFechaState();
}

class _TarjetaFechaState extends State<TarjetaFecha> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0), // Padding de 10 en cada lado
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
          color: isSelected ? Colors.blue : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0), // Margen izquierdo
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0), // Margen izquierdo
                  child: Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[600], // Color gris oscuro
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/calendario');
              },
              child: CircleAvatar(
                child: Icon(widget.iconData),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


