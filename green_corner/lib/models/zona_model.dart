import 'dart:convert';

ZonaModel zonaModelFromJson(String str) => ZonaModel.fromJson(json.decode(str));

String zonaModelToJson(ZonaModel data) => json.encode(data.toJson());

class ZonaModel {
  ZonaModel({
    this.id,
    required this.codigo,
    this.descripcion,
    required this.direccion,
    this.telefono,
    this.estatus,
  }) {
    if (this.estatus == null) {
      this.estatus = 1;
    } //else {

    //}
  }

  int? id;
  String codigo;
  String? descripcion;
  String direccion;
  String? telefono;
  int? estatus;

  factory ZonaModel.fromJson(Map<String, dynamic> json) => ZonaModel(
        id: json["id"],
        codigo: json["codigo"],
        descripcion: json["descripcion"],
        direccion: json["direccion"],
        telefono: json["telefono"],
        estatus: json["estatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "codigo": codigo,
        "descripcion": descripcion,
        "direccion": direccion,
        "telefono": telefono,
        "estatus": estatus,
      };
}
