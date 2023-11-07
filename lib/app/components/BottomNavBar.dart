import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int initialIndex;

  BottomNavBar(this.initialIndex);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      currentIndex: widget.initialIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Tareas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: 'Añadir',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'Horario',
        ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed('/');
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed('/tareas');
            break;
          case 2:
            Navigator.of(context).pushReplacementNamed('/add');
            break;
          case 3:
            Navigator.of(context).pushReplacementNamed('/calendario');
            break;
          case 4:
            Navigator.of(context).pushReplacementNamed('/horario');
            break;
        }
      },
    );
  }
}
