import 'package:flutter/material.dart';
import 'package:green_corner/screens/screens.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class ClientesScreen extends StatelessWidget {
  const ClientesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
        elevation: 0,
      ),
      drawer: const HomeMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CardButton(
            titulo: 'Registrar cliente',
            subtitulo: 'Registrar un nuevo cliente',
            icono: Icons.person_add_alt_outlined,
            ruta: RegistrarScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Consultar clientes',
            subtitulo: 'Ver clientes registrados',
            icono: Icons.person_search_outlined,
            ruta: ConsultarScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          // CardButton(
          //   titulo: 'Grupos de clientes',
          //   subtitulo: 'Ver los distintos grupos de clientes',
          //   icono: Icons.people_alt_outlined,
          //   ruta: GruposScreen(),
          // ),
        ],
      ),
    );
  }
}
