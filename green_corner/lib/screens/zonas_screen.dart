import 'package:flutter/material.dart';
import 'package:green_corner/screens/screens.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class ZonasScreen extends StatelessWidget {
  const ZonasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zonas'),
        elevation: 0,
      ),
      drawer: const HomeMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CardButton(
            titulo: 'Registrar zona',
            subtitulo: 'Registra un nuevo cobrador',
            icono: Icons.receipt,
            ruta: RegistrarZonaScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Ver zonas',
            subtitulo: 'Ver las zonas registradas',
            icono: Icons.receipt_outlined,
            //ruta: ,
          ),
        ],
      ),
    );
  }
}
