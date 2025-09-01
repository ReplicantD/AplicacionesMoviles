import 'package:flutter/material.dart';

class CardEmpresa extends StatelessWidget {
  const CardEmpresa({super.key, required this.nombre,
  required this.icono, required this.sector, required this.mercado, required this.simbolo});

  final String nombre,sector, mercado, simbolo;
  final IconData icono;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(this.icono),
      
    );
  }
}