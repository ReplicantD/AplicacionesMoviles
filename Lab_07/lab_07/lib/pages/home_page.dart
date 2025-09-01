import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laboratorio 07"),
        backgroundColor: Colors.orange,
        
        
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(MdiIcons.domain),
            label: 'Empresas',
          ),
          NavigationDestination(
            icon: Icon(MdiIcons.cashMultiple),
            label: 'Indicadores',
          )
        ],
      ),
      
      
    );
  }
}