import 'package:flutter/material.dart';
import 'package:pruebas/widgets/custom_text_form_field.dart';
import 'package:pruebas/widgets/date_text_form_field.dart';

class GeneralnformationScreen extends StatelessWidget {
  GeneralnformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        CustomTextFormField(
          label: 'Empresa solicitante',
          hintText: 'Escribir aquí',
          onChanged: (value) {},
          validator: null,
        ),
        SizedBox(height: size.height * 0.03),

        CustomTextFormField(
          label: 'Nombre del solicitante',
          hintText: 'Escribir aquí',
          onChanged: (value) {},
          validator: null,
        ),
        SizedBox(height: size.height * 0.03),

        CustomTextFormField(
          label: 'Cargo del solicitante',
          hintText: 'Escribir aquí',
          onChanged: (value) {},
          validator: null,
        ),
        SizedBox(height: size.height * 0.03),
        
        DateTextFormField(
          label: 'Fecha',
          hintText: 'dd/mm/aaaa',
          onChanged: (value) {},
          validator: null,
        ),
        SizedBox(height: size.height * 0.03),
      ],
    );
  }
}
