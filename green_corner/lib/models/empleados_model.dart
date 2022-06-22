// To parse this JSON data, do
//
//     final empleadosModel = empleadosModelFromJson(jsonString);

import 'dart:convert';

EmpleadosModel empleadosModelFromJson(String str) =>
    EmpleadosModel.fromJson(json.decode(str));

String empleadosModelToJson(EmpleadosModel data) => json.encode(data.toJson());

class EmpleadosModel {
  EmpleadosModel({
    this.id,
    required this.codigo,
    required this.nombre,
    this.cedula,
    this.ciudad,
    this.direccion,
    this.telefono,
    this.imagen,
    required this.tipo,
    this.zona,
    this.sueldo,
    this.usuario,
    this.estatus,
  });

  int? id;
  String codigo;
  String nombre;
  String? cedula;
  String? ciudad;
  String? direccion;
  String? telefono;
  String? imagen;
  String tipo;
  String? zona;
  double? sueldo;
  String? usuario;
  int? estatus;

  factory EmpleadosModel.fromJson(Map<String, dynamic> json) => EmpleadosModel(
        id: json["id"],
        codigo: json["codigo"],
        nombre: json["nombre"],
        cedula: json["cedula"],
        ciudad: json["ciudad"],
        direccion: json["direccion"],
        telefono: json["telefono"],
        imagen: json["imagen"],
        tipo: json["tipo"],
        zona: json["zona"],
        sueldo: json["sueldo"],
        usuario: json["usuario"],
        estatus: json["estatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "codigo": codigo,
        "nombre": nombre,
        "cedula": cedula,
        "ciudad": ciudad,
        "direccion": direccion,
        "telefono": telefono,
        "imagen": imagen,
        "tipo": tipo,
        "zona": zona,
        "sueldo": sueldo,
        "usuario": usuario,
        "estatus": estatus,
      };
}
