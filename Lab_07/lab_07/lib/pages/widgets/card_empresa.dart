import 'package:flutter/material.dart';

class CardEmpresa extends StatelessWidget {
  const CardEmpresa({
    super.key,
    required this.nombre,
    required this.icono,
    required this.sector,
    required this.mercado,
    required this.simbolo,
    required this.color,
  });

  final String nombre, sector, mercado, simbolo;
  final IconData icono;
  final int color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color(this.color),
      leading: Icon(this.icono, color: Colors.white),
      title: Text(
        this.nombre + " " + this.simbolo,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(this.sector, style: TextStyle(color: Colors.white)),
      trailing: Text(this.mercado, style: TextStyle(color: Colors.white)),
    );
  }
}
