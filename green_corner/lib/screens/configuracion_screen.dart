import 'package:flutter/material.dart';
import 'package:green_corner/screens/screens.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class ConfiguracionScreen extends StatelessWidget {
  const ConfiguracionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'),
        elevation: 0,
      ),
      drawer: const HomeMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CardButton(
            titulo: 'Registrar cobrador',
            subtitulo: 'Registra un nuevo cobrador',
            icono: Icons.receipt,
            ruta: CuotaPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Consultar cobrador',
            subtitulo: 'Ver cobradores registrados',
            icono: Icons.receipt_outlined,
            ruta: InteresPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Traspaso de clientes',
            subtitulo: 'Traspasar clientes de un cobrador a otro',
            icono: Icons.receipt_long_sharp,
            ruta: RecibosCobrarPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Prestamos por cobrador',
            subtitulo: 'Ver los prestamos de cada cobrador',
            icono: Icons.history_outlined,
            ruta: ConsultarPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Editar cobrador',
            subtitulo: 'Edita los datos de los cobradores',
            icono: Icons.settings_backup_restore_outlined,
            ruta: AnularPagosScreen(),
          ),
        ],
      ),
    );
  }
}
