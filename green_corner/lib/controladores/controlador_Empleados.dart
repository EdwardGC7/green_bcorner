import 'package:green_corner/models/empleados_model.dart';
import 'package:green_corner/providers/db_provider.dart';

class ControladorEmpleados {
  //////  CREATE  ////////////
  static crearEmpleados(arregloDeValores) {
    final datosEmpleado = EmpleadosModel(
      id: arregloDeValores["id"],
      codigo: 'DBC0000',
      nombre: arregloDeValores["nombre"],
      cedula: arregloDeValores["cedula"],
      ciudad: arregloDeValores["ciudad"],
      direccion: arregloDeValores["direccion"],
      telefono: arregloDeValores["telefono"],
      imagen: arregloDeValores["imagen"],
      tipo: arregloDeValores["tipo"],
      zona: arregloDeValores["zona"],
      sueldo: double.parse(arregloDeValores["sueldo"]),
      usuario: 'actualUser',
      estatus: 1,
    );
    return DBProvider.db.nuevoEmpleado(datosEmpleado);
  }
}
