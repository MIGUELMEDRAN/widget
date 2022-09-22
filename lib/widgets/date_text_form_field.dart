import 'package:flutter/material.dart';

class DateTextFormField extends StatelessWidget {
  final void Function(String value) onChanged;
  final String? Function(String? value)? validator;
  final String label;
  final String hintText;

  DateTextFormField({
    Key? key,
    required this.onChanged,
    this.validator,
    required this.label,
    required this.hintText,
  }) : super(key: key);

  String date = '';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormField(
        controller: controller,
        enabled: false,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          label: Text(label),
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        onChanged: (value){
          print('OnChanged: $value');
        },
        validator: validator,        
      ),
      onTap: () async {
        final DateTime? date = await showDatePicker(
          context: context, 
          initialDate: DateTime.now(), 
          firstDate: DateTime(1999), 
          lastDate: DateTime(2150),
        );
        if(date != null){
          controller.text = '${date.day}/${date.month}/${date.year}';
        }
      } ,
    );
  }
}
