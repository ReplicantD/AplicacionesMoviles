import 'package:flutter/material.dart';
import 'package:intento3/pages/drawer_pages/audifono_page.dart';
import 'package:intento3/pages/drawer_pages/tablet_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _paginas = [AudifonoPage(),TabletPage()];
  int _paginaSeleccionada = 0;
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
              colors: [Colors.red,Colors.orange],
            )
          ),
        ),
      ),
      body: IndexedStack(children: _paginas, index: _paginaSeleccionada),
      endDrawer: NavigationDrawer(
        children: [
          NavigationDrawerDestination(
            icon: Icon(MdiIcons.monitor),
            label: Text('data'),
          ),
          NavigationDrawerDestination(
            icon: Icon(MdiIcons.accountAlert),
            label: Text('data2'),
          )
        ],
        selectedIndex: _paginaSeleccionada,
        onDestinationSelected: (indicePagina) {
          setState(() {
            _paginaSeleccionada = indicePagina;
          });
        },
      ),
    );
  }
}