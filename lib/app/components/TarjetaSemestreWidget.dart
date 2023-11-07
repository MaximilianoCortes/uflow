import 'package:flutter/material.dart';
import 'package:uflow/app/components/PorcentajeCirculo.dart';

class TarjetaSemestreWidget extends StatelessWidget {
  final String semestre;
  final String carrera;
  final double semanaPercent;
  final double notasPercent;
  final double promedioPercent;
  final String semanaText; // Nuevo parámetro para el texto de la semana
  final String notasText; // Nuevo parámetro para el texto de las notas
  final String promedioText;

  TarjetaSemestreWidget({
    required this.semestre,
    required this.carrera,
    required this.semanaPercent,
    required this.notasPercent,
    required this.promedioPercent,
    required this.semanaText, // Nuevo parámetro para el texto de la semana
    required this.notasText, // Nuevo parámetro para el texto de las notas
    required this.promedioText,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          width: 240,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                child: Text(
                  semestre,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 7, 0, 0),
                child: Text(
                  carrera,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildPorcentajeCircular(
                      percent: semanaPercent,
                      centerText: semanaText, // Usar el valor del centro
                      bottomText: 'Semana',
                    ),
                    buildPorcentajeCircular(
                      percent: notasPercent,
                      centerText: notasText, // Usar el valor del centro
                      bottomText: 'Notas',
                    ),
                    buildPorcentajeCircular(
                      percent: promedioPercent,
                      centerText: promedioText, // Usar el valor del centro
                      bottomText: 'Promedio',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPorcentajeCircular({
    required double percent,
    required String centerText,
    required String bottomText,
  }) {
    return CircularPercentIndicatorWidget(
      percent: percent,
      radius: 22,
      lineWidth: 5,
      progressColor: Colors.blue,
      backgroundColor: Colors.grey,
      centerText: centerText,
      bottomText: bottomText,
    );
  }
}
