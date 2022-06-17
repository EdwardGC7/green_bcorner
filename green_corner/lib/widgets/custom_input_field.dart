import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? customController;
  final bool? enable;

  //final String formProperty;
  //final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.customController,
    this.enable,
    //required this.formProperty,
    //required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: customController,
      autofocus: false,
      enabled: enable,
      //initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      /*obscureText: obscureText,
      
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) {
          return 'Este campo es requerido';
        }
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,*/
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
