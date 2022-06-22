import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_corner/controladores/controlador_clientes.dart';
import 'package:green_corner/controladores/controlador_zonas.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class RegistrarScreen extends StatelessWidget {
  const RegistrarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fieldNombreController = TextEditingController();
    TextEditingController fieldApodoController = TextEditingController();
    TextEditingController fieldCedulaController = TextEditingController();
    TextEditingController fieldCiudadController = TextEditingController();
    TextEditingController fieldDireccionCasaController =
        TextEditingController();
    TextEditingController fieldDireccionTrabajoController =
        TextEditingController();
    TextEditingController fieldFechaNacimientoController =
        TextEditingController();
    TextEditingController fieldTelMovilController = TextEditingController();
    TextEditingController fieldTelCasaController = TextEditingController();
    TextEditingController fieldTelTrabajoController = TextEditingController();
    TextEditingController fieldEmailController = TextEditingController();
    TextEditingController fieldReferenciaController = TextEditingController();
    TextEditingController fieldOcupacionController = TextEditingController();
    TextEditingController fieldNegocioController = TextEditingController();
    TextEditingController fieldObservacionesController =
        TextEditingController();
    String zonaController = '';

    return Scaffold(
      appBar: AppBar(
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
                        'https://pbs.twimg.com/profile_images/485108590265782274/XDuVc00C_400x400.jpeg'),
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
                hintText: 'Nombre completo del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldApodoController,
                labelText: 'Apodo',
                hintText: 'Apodo del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldCedulaController,
                labelText: 'ID/Cedula',
                hintText: 'ID del cliente',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldCiudadController,
                labelText: 'Ciudad',
                hintText: 'Ciudad del cliente',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldDireccionCasaController,
                labelText: 'Direccion casa',
                hintText: 'Direccion del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldDireccionTrabajoController,
                labelText: 'Direccion trabajo',
                hintText: 'Segunda direccion',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldFechaNacimientoController,
                labelText: 'Fecha de nacimiento',
                hintText: 'Fecha de nacimiento del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldTelMovilController,
                labelText: 'Telefono movil',
                hintText: 'Numero de telefono movil',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldTelCasaController,
                labelText: 'Telefono residencial',
                hintText: 'Telefono de la residencia',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldTelTrabajoController,
                labelText: 'Telefono del trabajo',
                hintText: 'Telefono del lugar de trabajo',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldEmailController,
                labelText: 'Email',
                hintText: 'Email del cliente',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldReferenciaController,
                labelText: 'Referencia',
                hintText: 'Cliente referido por...',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldOcupacionController,
                labelText: 'Ocupacion',
                hintText: 'A que se dedica el cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                customController: fieldNegocioController,
                labelText: 'Negocio',
                hintText: 'Negocio del cliente',
                keyboardType: TextInputType.number,
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
              SizedBox(
                height: 120.0,
                child: TextFormField(
                  controller: fieldObservacionesController,
                  decoration: InputDecoration(
                    labelText: 'Observaciones',
                    hintText: 'Agregar comentario',
                  ),
                  expands: true,
                  maxLines: null,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Map valores = {
                      'imagen': 'http/algodeejemplo.url',
                      "nombre": fieldNombreController.text,
                      "apodo": fieldApodoController.text,
                      "cedula": fieldCedulaController.text,
                      "ciudad": fieldCiudadController.text,
                      "dir_casa": fieldDireccionCasaController,
                      "dir_trabajo": fieldDireccionTrabajoController,
                      "f_nacimiento": fieldFechaNacimientoController,
                      "celular": fieldTelMovilController,
                      "tel_casa": fieldTelCasaController,
                      "tel_trabajo": fieldTelTrabajoController,
                      "email": fieldEmailController,
                      "referencia": fieldReferenciaController,
                      "ocupacion": fieldOcupacionController,
                      "negocio": fieldNegocioController,
                      "observaciones": fieldObservacionesController,
                      "zona": zonaController,
                    };

                    var resultado = ControladorClientes.crearCliente(valores);
                    if (resultado != null) {
                      Platform.isAndroid
                          ? AlertsWidget.displayDialogAndroid(context)
                          : AlertsWidget.displayDialogIOS(context);

                      fieldNombreController.clear();
                      fieldApodoController.clear();
                      fieldCedulaController.clear();
                      fieldCiudadController.clear();
                      fieldDireccionCasaController.clear();
                      fieldDireccionTrabajoController.clear();
                      fieldFechaNacimientoController.clear();
                      fieldTelMovilController.clear();
                      fieldTelCasaController.clear();
                      fieldTelTrabajoController.clear();
                      fieldEmailController.clear();
                      fieldReferenciaController.clear();
                      fieldOcupacionController.clear();
                      fieldNegocioController.clear();
                      fieldObservacionesController.clear();
                      fieldTelMovilController.clear();
                      zonaController = '';
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
