import 'package:green_corner/models/clientes_model.dart';
import 'package:green_corner/providers/db_provider.dart';

class ControladorClientes {
  //////  CREATE  ////////////
  static crearCliente(arregloDeValores) {
    final datosCliente = ClientesModel(
      id: arregloDeValores["id"],
      codigo: arregloDeValores["codigo"],
      nombre: arregloDeValores["nombre"],
      apodo: arregloDeValores["apodo"],
      cedula: arregloDeValores["cedula"],
      ciudad: arregloDeValores["ciudad"],
      dirCasa: arregloDeValores["dir_casa"],
      dirTrabajo: arregloDeValores["dir_trabajo"],
      fNacimiento: arregloDeValores["f_nacimiento"],
      celular: arregloDeValores["celular"],
      telCasa: arregloDeValores["tel_casa"],
      telTrabajo: arregloDeValores["tel_trabajo"],
      email: arregloDeValores["email"],
      referencia: arregloDeValores["referencia"],
      ocupacion: arregloDeValores["ocupacion"],
      negocio: arregloDeValores["negocio"],
      observaciones: arregloDeValores["observaciones"],
      fechaRegistro: arregloDeValores["fecha_registro"],
      imagen: arregloDeValores["imagen"],
      zona: arregloDeValores["zona"],
      balance: arregloDeValores["balance"].toDouble(),
      usuario: arregloDeValores["usuario"],
      estatus: 1,
    );
    return DBProvider.db.nuevoCliente(datosCliente);
  }
}
