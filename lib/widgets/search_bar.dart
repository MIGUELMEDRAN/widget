import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String labelTextField;
  final String labelButton;
  final void Function(String value) onSearch;

  String valueTextField = '';

  SearchBar({
    Key? key, 
    required this.labelTextField, 
    required this.labelButton, 
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.all(1),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              label: Text(labelTextField),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            onChanged: (value) => valueTextField = value,
          ),
        ),
        SizedBox(width: size.width * 0.03),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 20)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            child: Text(
              labelButton,
              style: const TextStyle(
                color: Colors.white,                
              ),
            ),
            onPressed: () {
              onSearch(valueTextField);
            },
          ),
        )
      ],
    );
  }
}
