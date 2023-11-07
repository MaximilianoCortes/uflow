import 'package:flutter/material.dart';
import 'package:uflow/app/components/PorcentajeCirculo.dart';

class TarjetaCursosWidget extends StatelessWidget {
  final String nombre;
  final double notasPercent;
  final String notasText;
  final double promedioPercent;
  final String promedioText;

  TarjetaCursosWidget({
    required this.nombre,
    required this.notasPercent,
    required this.notasText,
    required this.promedioPercent,
    required this.promedioText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        // Utiliza Expanded para que el contenedor ocupe todo el espacio disponible
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded( // Hace que este contenedor ocupe el espacio disponible
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 10), // Padding hacia la derecha del texto
                child: Text(
                  nombre,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
              child: buildPorcentajeCircular(
                percent: notasPercent,
                centerText: notasText,
                bottomText: 'Notas',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
              child: buildPorcentajeCircular(
                percent: promedioPercent,
                centerText: promedioText,
                bottomText: 'Promedio',
              ),
            ),
          ],
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
      radius: 22, // Ajusta el radio según tus necesidades
      lineWidth: 5,
      progressColor: Colors.blue,
      backgroundColor: Colors.grey,
      centerText: centerText,
      bottomText: bottomText,
    );
  }
}
