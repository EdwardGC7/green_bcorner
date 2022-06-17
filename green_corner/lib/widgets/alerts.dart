import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_corner/theme/app_theme.dart';

class AlertsWidget {
  static void displayDialogIOS(BuildContext context,
      [String mensaje = 'Hecho']) {
    // if (mensaje == null) {
    //   mensaje = 'Este es el mensaje de la alerta';
    // }
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(mensaje),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.grey),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok',
                      style: TextStyle(color: AppTheme.primary))),
            ],
          );
        });
  }

  static void displayDialogAndroid(BuildContext context,
      [String mensaje = 'Hecho']) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(mensaje),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.grey))),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok',
                      style: TextStyle(color: AppTheme.primary)))
            ],
          );
        });
  }
}
