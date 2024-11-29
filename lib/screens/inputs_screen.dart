import 'package:fl_components/widgets/custom_text_form_file.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Nombre',
              labelText: 'Nombre',
              helperText: 'Solo letras',
              icon: Icons.verified_outlined,
              suffixIcon: Icons.person_2_rounded,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              hintText: 'Apellidos',
              labelText: 'Apellidos',
              helperText: 'Solo letras',
              icon: Icons.verified_outlined,
              suffixIcon: Icons.person_2_rounded,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              hintText: 'Edad',
              labelText: 'Edad',
              helperText: 'Solo números',
              icon: Icons.verified_outlined,
              suffixIcon: Icons.person_2_rounded,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              hintText: 'Email',
              labelText: 'Email',
              icon: Icons.verified_outlined,
              suffixIcon: Icons.person_2_rounded,
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
