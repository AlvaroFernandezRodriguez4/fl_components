import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
 

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      onChanged: (value){
        print('value: $value');
      },
      validator: (value) {
        if (value!.length < 3) {
          return 'Mínimo 3 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.person),
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}