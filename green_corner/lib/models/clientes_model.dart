// To parse this JSON data, do
//
//     final clientesModel = clientesModelFromJson(jsonString);

import 'dart:convert';

ClientesModel clientesModelFromJson(String str) =>
    ClientesModel.fromJson(json.decode(str));

String clientesModelToJson(ClientesModel data) => json.encode(data.toJson());

class ClientesModel {
  ClientesModel({
    this.id,
    required this.codigo,
    required this.nombre,
    this.apodo,
    this.cedula,
    this.ciudad,
    this.dirCasa,
    this.dirTrabajo,
    this.fNacimiento,
    this.celular,
    this.telCasa,
    this.telTrabajo,
    this.email,
    this.referencia,
    this.ocupacion,
    this.negocio,
    this.observaciones,
    this.fechaRegistro,
    this.imagen,
    required this.zona,
    this.balance,
    this.usuario,
    this.estatus,
  });

  int? id;
  String codigo;
  String nombre;
  String? apodo;
  String? cedula;
  String? ciudad;
  String? dirCasa;
  String? dirTrabajo;
  String? fNacimiento;
  String? celular;
  String? telCasa;
  String? telTrabajo;
  String? email;
  String? referencia;
  String? ocupacion;
  String? negocio;
  String? observaciones;
  String? fechaRegistro;
  String? imagen;
  String zona;
  double? balance;
  String? usuario;
  int? estatus;

  factory ClientesModel.fromJson(Map<String, dynamic> json) => ClientesModel(
        id: json["id"],
        codigo: json["codigo"],
        nombre: json["nombre"],
        apodo: json["apodo"],
        cedula: json["cedula"],
        ciudad: json["ciudad"],
        dirCasa: json["dir_casa"],
        dirTrabajo: json["dir_trabajo"],
        fNacimiento: json["f_nacimiento"],
        celular: json["celular"],
        telCasa: json["tel_casa"],
        telTrabajo: json["tel_trabajo"],
        email: json["email"],
        referencia: json["referencia"],
        ocupacion: json["ocupacion"],
        negocio: json["negocio"],
        observaciones: json["observaciones"],
        fechaRegistro: json["fecha_registro"],
        imagen: json["imagen"],
        zona: json["zona"],
        balance: json["balance"].toDouble(),
        usuario: json["usuario"],
        estatus: json["estatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "codigo": codigo,
        "nombre": nombre,
        "apodo": apodo,
        "cedula": cedula,
        "ciudad": ciudad,
        "dir_casa": dirCasa,
        "dir_trabajo": dirTrabajo,
        "f_nacimiento": fNacimiento,
        "celular": celular,
        "tel_casa": telCasa,
        "tel_trabajo": telTrabajo,
        "email": email,
        "referencia": referencia,
        "ocupacion": ocupacion,
        "negocio": negocio,
        "observaciones": observaciones,
        "fecha_registro": fechaRegistro,
        "imagen": imagen,
        "zona": zona,
        "balance": balance,
        "usuario": usuario,
        "estatus": estatus,
      };
}
