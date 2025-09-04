import 'package:flutter/material.dart';
import 'package:lab_07_01/pages/bolsa.dart';
import 'package:lab_07_01/pages/empresa.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _paginaSeleccionada = 0;
  List<Widget> _paginas = [
    PageEmpresa(),
    PageBolsa(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laboratorio 07", style: TextStyle(color: Colors.white),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red,Colors.orange]
            )
          ),
        ),

                
      

      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _paginaSeleccionada,
        onDestinationSelected: (indicePagina){
          setState(() {
            _paginaSeleccionada = indicePagina;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(MdiIcons.domain),
            label: 'Empresas'),
          NavigationDestination(
            icon: Icon(MdiIcons.cashMultiple),
            label: 'Indicadores')
        ],
      ),
      body: IndexedStack(
        children: _paginas,
        index: _paginaSeleccionada,
      ),
    );
  }
}