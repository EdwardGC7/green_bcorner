import 'package:flutter/material.dart';
import 'package:green_corner/screens/screens.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class PrestamosScreen extends StatelessWidget {
  const PrestamosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prestamos'),
        elevation: 0,
      ),
      drawer: const HomeMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CardButton(
            titulo: 'Registrar prestamo',
            subtitulo: 'Registrar un nuevo prestamo',
            icono: Icons.monetization_on_outlined,
            ruta: RegistrarPrestamoScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Consulta de prestamos',
            subtitulo: 'Ver lista de prestamos',
            icono: Icons.search_rounded,
            ruta: ConsultaPrestamoScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Modificar pagare',
            subtitulo: 'Modificar uno o varios pagares',
            icono: Icons.edit_outlined,
            ruta: ModificarPrestamoScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Anular prestamo',
            subtitulo: 'Invalidar un prestamo ya registrado',
            icono: Icons.settings_backup_restore_outlined,
            ruta: AnularPrestamoScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Cerrar prestamo',
            subtitulo: 'Realizar el pago completo de un prestamo',
            icono: Icons.payment_outlined,
            ruta: CerrarPrestamoScreen(),
          ),
        ],
      ),
    );
  }
}
