import 'package:flutter/material.dart';
import 'package:uflow/app/components/BottomNavBar.dart';
import 'package:uflow/app/components/TarjetaSemestreWidget.dart';
import 'package:uflow/app/components/TarjetaCursosWidget.dart';
import 'package:uflow/app/components/CustomAppBar.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final formattedDate = DateFormat('EEEE, d' ,'es').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(title: formattedDate),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView( // Envuelve todo en un ListView
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TarjetaSemestreWidget(
                          semestre: 'Semestre 5',
                          carrera: 'Ingenieria Informatica',
                          semanaPercent: 1,
                          notasPercent: 0.54,
                          promedioPercent: 0.67,
                          semanaText: '12/24',
                          notasText: '7/20',
                          promedioText: '4.7',
                        ),
                        TarjetaSemestreWidget(
                          semestre: 'Semestre 6',
                          carrera: 'Ingenieria Informatica',
                          semanaPercent: 1,
                          notasPercent: 0.54,
                          promedioPercent: 0.67,
                          semanaText: '12/24',
                          notasText: '7/20',
                          promedioText: '4.7',
                        ),
                        TarjetaSemestreWidget(
                          semestre: 'Semestre 6',
                          carrera: 'Ingenieria Informatica',
                          semanaPercent: 1,
                          notasPercent: 0.54,
                          promedioPercent: 0.67,
                          semanaText: '12/24',
                          notasText: '7/20',
                          promedioText: '4.7',
                        ),
                        // ... (otros TarjetaSemestreWidget similares)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Agrega la acción que deseas realizar al tocar la tarjeta.
                  },
                  child: Container(
                    height: 49,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Cambia el color de fondo de la tarjeta aquí
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cursos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 388,
                  padding: EdgeInsets.only(top: 10),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      TarjetaCursosWidget(
                        nombre: 'User Experience',
                        notasPercent: 0.75,
                        notasText: '15/20',
                        promedioPercent: 0.85,
                        promedioText: '8.5',
                      ),
                      TarjetaCursosWidget(
                        nombre: 'Especialización Tecnológica II',
                        notasPercent: 0.75,
                        notasText: '15/20',
                        promedioPercent: 0.85,
                        promedioText: '8.5',
                      ),
                      TarjetaCursosWidget(
                        nombre: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                        notasPercent: 0.75,
                        notasText: '15/20',
                        promedioPercent: 0.85,
                        promedioText: '8.5',
                      ),
                      TarjetaCursosWidget(
                        nombre: 'Especialización Tecnológica II',
                        notasPercent: 0.75,
                        notasText: '15/20',
                        promedioPercent: 0.85,
                        promedioText: '8.5',
                      ),
                      TarjetaCursosWidget(
                        nombre: 'Especialización Tecnológica II',
                        notasPercent: 0.75,
                        notasText: '15/20',
                        promedioPercent: 0.85,
                        promedioText: '8.5',
                      ),
                      // ... (otros TarjetaCursosWidget similares)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(0),
    );
  }
}
