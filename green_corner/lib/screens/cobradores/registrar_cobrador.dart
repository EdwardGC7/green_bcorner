import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_corner/theme/app_theme.dart';
import 'package:green_corner/widgets/widgets.dart';

class RegistrarCobradorScreen extends StatelessWidget {
  const RegistrarCobradorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                labelText: 'Nombre',
                hintText: 'Nombre completo del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Apodo',
                hintText: 'Apodo del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'ID/Cedula',
                hintText: 'ID del cliente',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Ciudad',
                hintText: 'Ciudad del cliente',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Direccion 1',
                hintText: 'Direccion del cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Direccion 2',
                hintText: 'Segunda direccion',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Telefono movil',
                hintText: 'Numero de telefono movil',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Telefono residencial',
                hintText: 'Telefono de la residencia',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Telefono del trabajo',
                hintText: 'Telefono del lugar de trabajo',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Ocupacion',
                hintText: 'A que se dedica el cliente',
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Negocio',
                hintText: 'Negocio del cliente',
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20.0,
              ),
              DropdownButtonFormField(
                hint: Text('Zona'),
                items: [
                  DropdownMenuItem(value: 'Zonaa', child: Text('zona1')),
                  DropdownMenuItem(value: 'Zonab', child: Text('zona2')),
                  DropdownMenuItem(value: 'Zonac', child: Text('zona3')),
                  DropdownMenuItem(value: 'Zonad', child: Text('zona4')),
                  DropdownMenuItem(value: 'Zonae', child: Text('zona5')),
                ],
                onChanged: (value) {},
              ),
              /*CustomInputField(
                labelText: 'Zona',
                hintText: 'Zona del cliente',
              ),*/
              SizedBox(
                height: 20.0,
              ),
              CustomInputField(
                labelText: 'Referencia',
                hintText: 'Cliente referido por...',
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 120.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Comentario',
                    hintText: 'Agregar comentario',
                  ),
                  expands: true,
                  maxLines: null,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Platform.isAndroid
                        ? AlertsWidget.displayDialogAndroid(context)
                        : AlertsWidget.displayDialogIOS(context);
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
