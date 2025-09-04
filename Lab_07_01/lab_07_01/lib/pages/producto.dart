import 'package:flutter/material.dart';

class PageProducto extends StatefulWidget {
  const PageProducto({super.key});

  @override
  State<PageProducto> createState() => _PageProductoState();
}

class _PageProductoState extends State<PageProducto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("producto"),
    );
  }
}