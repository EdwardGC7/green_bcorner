import 'package:flutter/material.dart';
import 'package:green_corner/screens/screens.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class PagosScreen extends StatelessWidget {
  const PagosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagos'),
        elevation: 0,
      ),
      drawer: const HomeMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CardButton(
            titulo: 'Cuota',
            subtitulo: 'Realizar pago de cuota',
            icono: Icons.receipt,
            ruta: CuotaPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Interes',
            subtitulo: 'Realizar pago de interes',
            icono: Icons.receipt_outlined,
            ruta: InteresPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Recibos a cobrar',
            subtitulo: 'Impresion de recibos a cobrar',
            icono: Icons.receipt_long_sharp,
            ruta: RecibosCobrarPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Consulta de pagos',
            subtitulo: 'Consultar el historial de pagos',
            icono: Icons.history_outlined,
            ruta: ConsultarPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Anular pago',
            subtitulo: 'Anular un pago realizado',
            icono: Icons.settings_backup_restore_outlined,
            ruta: AnularPagosScreen(),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          CardButton(
            titulo: 'Reimpresion',
            subtitulo: 'Reimprimir conjunto de recibos',
            icono: Icons.file_copy_outlined,
            ruta: ReimpresionPagosScreen(),
          ),
        ],
      ),
    );
  }
}
