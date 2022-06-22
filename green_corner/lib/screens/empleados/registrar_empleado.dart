import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_corner/controladores/controlador_Empleados.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class RegistrarEmpleadoScreen extends StatelessWidget {
  const RegistrarEmpleadoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fieldNombreController = TextEditingController();
    TextEditingController fieldCedulaController = TextEditingController();
    TextEditingController fieldCiudadController = TextEditingController();
    TextEditingController fieldDireccionController = TextEditingController();
    TextEditingController fieldTelMovilController = TextEditingController();
    String tipoController = '';
    String zonaController = '';
    TextEditingController fieldSueldoController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Empleados'),
        elevation: 0,
        //backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: NetworkImage(
                        'https://d1nhio0ox7pgb.cloudfront.net/_img/o_collection_png/green_dark_grey/512x512/plain/users.png'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppTheme.primary),
                      primary: AppTheme.primary,
                      minimumSize: Size(40.0, 45.0),
                    ),
                    child: Text(
                      'Cargar imagen',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ], //row child
              ),
              SizedBox(
                height: 40.0,
              ),
              CustomInputField(
                customController: fieldNombreController,
                labelText: 'Nombre',
                hintText: 'Nombre completo del empleado',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldCedulaController,
                labelText: 'ID/Cedula',
                hintText: 'ID del empleado',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldCiudadController,
                labelText: 'Ciudad',
                hintText: 'Ciudad del empleado',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldDireccionController,
                labelText: 'Direccion',
                hintText: 'Direccion del empleado',
              ),
              SizedBox(
                height: 20.0,
              ),
              // CustomInputField(
              //   labelText: 'Direccion 2',
              //   hintText: 'Segunda direccion',
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              CustomInputField(
                customController: fieldTelMovilController,
                labelText: 'Telefono movil',
                hintText: 'Numero de telefono movil',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              DropdownButtonFormField<String>(
                hint: Text('Tipo'),
                items: [
                  DropdownMenuItem(value: 'cobrador', child: Text('Cobrador')),
                  DropdownMenuItem(
                      value: 'supervisor', child: Text('Supervisor')),
                  DropdownMenuItem(
                      value: 'administrador', child: Text('Administrador')),
                ],
                onChanged: (value) {
                  tipoController = value ?? 'Cobrador';
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              DropdownButtonFormField<String>(
                hint: Text('Zona'),
                items: [
                  DropdownMenuItem(value: 'Zonaa', child: Text('zona1')),
                  DropdownMenuItem(value: 'Zonab', child: Text('zona2')),
                  DropdownMenuItem(value: 'Zonac', child: Text('zona3')),
                  DropdownMenuItem(value: 'Zonad', child: Text('zona4')),
                  DropdownMenuItem(value: 'Zonae', child: Text('zona5')),
                ],
                onChanged: (value) {
                  zonaController = value ?? 'Zona';
                },
              ),
              /*CustomInputField(
                labelText: 'Zona',
                hintText: 'Zona del cliente',
              ),*/
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldSueldoController,
                labelText: 'Sueldo',
                hintText: 'RD\$0.00',
              ),
              SizedBox(
                height: 20.0,
              ),
              // SizedBox(
              //   height: 120.0,
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       labelText: 'Comentario',
              //       hintText: 'Agregar comentario',
              //     ),
              //     expands: true,
              //     maxLines: null,
              //   ),
              // ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Map valores = {
                      'imagen': 'http/algodeejemplo.url',
                      'nombre': fieldNombreController.text,
                      'cedula': fieldCedulaController.text,
                      'ciudad': fieldCiudadController.text,
                      'direccion': fieldDireccionController.text,
                      'telefono_movil': fieldTelMovilController.text,
                      'tipo': tipoController,
                      'zona': zonaController,
                      'sueldo': fieldSueldoController.text
                    };

                    var resultado =
                        ControladorEmpleados.crearEmpleados(valores);
                    if (resultado != null) {
                      Platform.isAndroid
                          ? AlertsWidget.displayDialogAndroid(context)
                          : AlertsWidget.displayDialogIOS(context);

                      fieldNombreController.clear();
                      fieldCedulaController.clear();
                      fieldCiudadController.clear();
                      fieldDireccionController.clear();
                      fieldTelMovilController.clear();
                      tipoController = '';
                      zonaController = '';
                      fieldSueldoController.clear();
                    } else {
                      Platform.isAndroid
                          ? AlertsWidget.displayDialogAndroid(context,
                              'Ha ocurrido un error al guardar los datos')
                          : AlertsWidget.displayDialogIOS(context,
                              'Ha ocurrido un error al guardar los datos');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppTheme.primary,
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                  child: SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Guardar',
                        style: TextStyle(fontSize: 24),
                      ))))
            ], //column child
          ),
        ),
      ),
    );
  }
}
