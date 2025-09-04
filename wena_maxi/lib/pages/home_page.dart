import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wena_maxi/pages/pages_drawer/bottom_page.dart';
import 'package:wena_maxi/pages/widgets/indicador_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _paginas = [BottomPage(),IndicadorTile()];
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
              colors: [Colors.red,Colors.orange]

            )
          ),
        ),
        
      ),
      endDrawer: NavigationDrawer(
        
        onDestinationSelected: (value) {
          setState(() {
            _paginaSeleccionada = value;
          });
          Navigator.pop(context);
        },
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Container(),
                
                Expanded(
                  child: Container(
                    
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFDB2266), Color(0xFFFE880C)]
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(MdiIcons.domain),
            label: Text("Empresas y bolsas"),
          ),
          Divider(),
          NavigationDrawerDestination(
            icon: Icon(MdiIcons.packageVariantClosed),
            label: Text("Productos"),
          ),
          Divider()
        ],
      ),
      body: IndexedStack(children: _paginas, index: _paginaSeleccionada,),
    );
  }
}