import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wena_maxi/pages/widgets/empresa_tile.dart';
import 'package:wena_maxi/pages/widgets/indicador_tile.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  List<Widget> _paginas = [EmpresaTile(),IndicadorTile()];  
  int _paginaSeleccionada = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _paginas, 
        index: _paginaSeleccionada,

        
        ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value){
          setState(() {
            _paginaSeleccionada = value;
          });
        },
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