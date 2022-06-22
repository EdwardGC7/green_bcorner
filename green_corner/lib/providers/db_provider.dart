import 'dart:io';

import 'package:green_corner/models/zona_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/empleados_model.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();
  //////// SENTENCIA CREAR BASE DE DATOS //////////////////

  static var sqlCollection = [
    """
        CREATE TABLE Zonas(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          descripcion TEXT,
          direccion TEXT,
          telefono TEXT,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Empleados(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          nombre TEXT,
          cedula TEXT,
          ciudad TEXT,
          direccion TEXT,
          telefono TEXT,
          imagen TEXT,
          tipo TEXT,
          zona TEXT,
          sueldo TEXT,
          usuario TEXT,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Clientes(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          nombre TEXT,
          apodo TEXT,
          cedula TEXT,
          dir_casa TEXT,
          dir_trabajo TEXT,
          f_nacimiento TEXT,
          celular TEXT,
          tel_casa TEXT,
          tel_trabajo TEXT,
          email TEXT,
          referencia TEXT,
          ocupacion TEXT,
          negocio TEXT,
          observaciones TEXT,
          f_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
          zona TEXT,
          imagen TEXT,
          balance REAL,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Tipos_prestamos(
          id INTEGER PRIMARY KEY NOT NULL,
          descripcion TEXT,
          dias INTEGER,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Usuarios(
          id INTEGER PRIMARY KEY NOT NULL,
          id_usuario TEXT NOT NULL,
          nombre TEXT,
          pwd TEXT,
          tipo_usuario TEXT,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Tipos_users(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          descripcion TEXT,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Config(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          nombre_cia TEXT,
          msg TEXT,
          t_prest_default TEXT,
          porciento_acta REAL,
          porciento_mora REAL,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Prestamos(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          cliente TEXT,
          fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
          monto REAL,
          tipo_prestamo TEXT,
          porciento REAL,
          cuotas INTEGER,
          dias INTEGER,
          porciento_acta REAL,
          acta_notarial REAL,
          interes REAL,
          mora REAL,
          pagos REAL,
          cobrador TEXT,
          estatus INTEGER
        )
      """,
    """
        CREATE TABLE Cuotas(
          id INTEGER PRIMARY KEY NOT NULL,
          prestamo TEXT,
          cuota INTEGER,
          fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
          capital REAL,
          interes REAL,
          total REAL,
          mora REAL,
          pagos REAL

        )
      """,
    """
        CREATE TABLE Pagos(
          id INTEGER PRIMARY KEY NOT NULL,
          codigo TEXT NOT NULL,
          prestamo TEXT,
          cuota INTEGER,
          fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
          capital REAL,
          interes REAL,
          mora REAL,
          pago REAL,
          total REAL,
          estatus INTEGER
        )
      """
  ];

  DBProvider._();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDB();

    return _database!;
  }

  //Future<Database> initDB() async {}
  Future<Database> initDB() async {
    // Path de donde almacenaremos la base de datos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'StandarDB.db');
    print(path);

    //Crear base de datos
    return await openDatabase(path, version: 2, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      for (String sql in sqlCollection) {
        //paramDB.execute(sql);
        await db.execute(sql);
      }
      ;
    });
  }

  ////////////////// CREATE /////////////////

// Crear zonas
  Future<int> nuevaZona(ZonaModel nuevaZona) async {
    final db = await database;
    final res = await db.insert('Zonas', nuevaZona.toJson());
    print(res);
    return res;
  }

// Crear empleados
  Future<int> nuevoEmpleado(EmpleadosModel nuevoEmpleado) async {
    final db = await database;
    final res = await db.insert('Empleados', nuevoEmpleado.toJson());
    print(res);
    return res;
  }
}
