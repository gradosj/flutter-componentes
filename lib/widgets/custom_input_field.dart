import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
      {Key? key,
      this.obscureText = false,
      this.keyboardType,
      this.helperText,
      this.hintText,
      this.labelText,
      this.icon,
      this.suffixIcon,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo tres caracteres' : null;
      },
      autovalidateMode: AutovalidateMode
          .onUserInteraction, // muestra la validacion cuando el usuario interactura
      decoration: InputDecoration(
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.green)),
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: icon == null ? null : Icon(suffixIcon),
          // prefixIcon: Icon(Icons.verified), //este icono está encima de
          //la linea de texto
          icon: icon == null
              ? null
              : Icon(icon), // este icono corre la linea de texto
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20)))),
    );
  }
}
