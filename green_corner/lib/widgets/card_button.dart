import 'package:flutter/material.dart';
import 'package:green_corner/theme/app_theme.dart';

class CardButton extends StatefulWidget {
  const CardButton({
    Key? key,
    required this.titulo,
    required this.subtitulo,
    this.icono = Icons.question_answer,
    this.ruta,
  }) : super(key: key);

  final String titulo;
  final String subtitulo;
  final dynamic icono;
  final dynamic ruta;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Column(
        children: [
          Container(
            height: 85,
            child: ListTile(
              minVerticalPadding: 20,
              leading: Icon(
                widget.icono,
                color: AppTheme.primary,
                size: 35,
              ),
              title: Text(
                widget.titulo,
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                widget.subtitulo,
                style: TextStyle(fontSize: 11),
              ),
              onTap: () {
                //Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => widget.ruta));
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
