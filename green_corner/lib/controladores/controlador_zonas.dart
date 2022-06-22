import 'package:green_corner/models/zona_model.dart';
import 'package:green_corner/providers/db_provider.dart';

class ControladorZonas {
  //////  CREATE  ////////////
  static crearZona(arregloDeValores) {
    final datosZona = ZonaModel(
        codigo: arregloDeValores['codigo'],
        descripcion: arregloDeValores['descripcion'],
        direccion: arregloDeValores['direccion'],
        telefono: arregloDeValores['telefono']);
    return DBProvider.db.nuevaZona(datosZona);
  }
}
