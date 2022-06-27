import 'package:flutter/material.dart';

class personalizarTextfield extends StatelessWidget {
  final String texto;
  final Icon miIcono;
  final FormFieldValidator<String> validator;
  final FormFieldValidator<String> validator2;

  const personalizarTextfield(
      {Key? key,
        required this.texto,
        required this.miIcono,
        required this.validator,
        required this.validator2,
      })
        : super(key: key);
  //personalizarTextfield(this.texto,this.miIcono, this._validator);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0, right: 30.0,top: 10,bottom: 10),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          hintText: texto,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 3,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: miIcono,
          )
        ),
      ),
    );
  }
}
