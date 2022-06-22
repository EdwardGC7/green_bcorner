import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_corner/controladores/controlador_zonas.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class RegistrarZonaScreen extends StatelessWidget {
  const RegistrarZonaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fieldCodigoController =
        TextEditingController(text: '0000');
    TextEditingController fieldDescripcionController = TextEditingController();
    TextEditingController fieldDireccionController = TextEditingController();
    TextEditingController fieldTelefonoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Zonas'),
        elevation: 0,
        //backgroundColor: Colors.transparent,
      ),
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusScope.of(context).requestFocus(FocusNode());
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                CustomInputField(
                  customController: fieldCodigoController,
                  labelText: 'codigo',
                  hintText: '0000',
                  enable: false,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomInputField(
                  customController: fieldDescripcionController,
                  labelText: 'Descripción',
                  hintText: 'Nombre de la zona',
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomInputField(
                  customController: fieldDireccionController,
                  labelText: 'Dirección',
                  hintText: 'Dirección de la zona',
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomInputField(
                  customController: fieldTelefonoController,
                  labelText: 'Teléfono',
                  hintText: 'Teléfono de contacto de la zona',
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      Map valores = {
                        'codigo': fieldCodigoController.text,
                        'descripcion': fieldDescripcionController.text,
                        'direccion': fieldDireccionController.text,
                        'telefono': fieldTelefonoController.text
                      };

                      var resultado = ControladorZonas.crearZona(valores);
                      if (resultado != null) {
                        Platform.isAndroid
                            ? AlertsWidget.displayDialogAndroid(context)
                            : AlertsWidget.displayDialogIOS(context);

                        fieldDescripcionController.clear();
                        fieldDireccionController.clear();
                        fieldTelefonoController..clear();
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
                          'Guardar zona',
                          style: TextStyle(fontSize: 24),
                        ))))
              ], //column child
            ),
          ),
        ),
      ),
    );
  }

  // void limpiarCampos(context) {
  //     //fieldCodigoController.text('');
  //     fieldDescripcionController.clear();
  //     fieldDireccionController.clear();
  //     fieldTelefonoController..clear();
  //   }
}
