import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  const Boton ({Key? key, required this.textoBoton, required this.miColor}):super(key:key);
  final String textoBoton;
  final Color miColor;
  //final GestureTapCallback _onPressed;

  //Boton(this.textoBoton, this.miColor,this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: new MaterialButton(
        onPressed: () {
          //_onPressed();
        },
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30),
            side:BorderSide(color: miColor,width: 3),
        ),
          child:Text(this.textoBoton),
      ),
    );
  }
}
