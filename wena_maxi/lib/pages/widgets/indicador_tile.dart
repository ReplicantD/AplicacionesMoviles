import 'package:flutter/material.dart';

class IndicadorTile extends StatefulWidget {
  const IndicadorTile({super.key});

  @override
  State<IndicadorTile> createState() => _IndicadorTileState();
}

class _IndicadorTileState extends State<IndicadorTile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class IndicadorWidget extends StatelessWidget {
  const IndicadorWidget({super.key, required this.codigo, required this.nombre, required this.valor});

  final String codigo, nombre, valor;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          
        ],
      ),
    );
  }
}